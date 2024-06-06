import 'package:student_planner/services/sqlite/database_constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteUtils {
  static final SQLiteUtils _singleton = SQLiteUtils._internal();
  Database? _db;

  factory SQLiteUtils() {
    return _singleton;
  }

  SQLiteUtils._internal();

  Future<Database> openDB() async {
    if (_db == null) {
      String databasePath = await getDatabasesPath();
      databasePath = join(databasePath, dbName);
      _db = await openDatabase(databasePath, version: dbVersion,
          onCreate: (db, version) async {
        Batch batch = db.batch();
        final String createTableEvent = '''
  CREATE TABLE IF NOT EXISTS $tableEvent(
    $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
    $columnEvent_name TEXT NOT NULL,
    $columnStart_time DATETIME NOT NULL,
    $columnEnd_time DATETIME NOT NULL,
    $columnIs_active INTEGER NOT NULL DEFAULT 1,
    $columnRepeat_status TEXT NOT NULL
  );''';
        batch.execute(createTableEvent);

        await batch.commit(continueOnError: false, noResult: true);
      },
      //     onUpgrade: (db, oldVersion, newVersion) async {
      //   Batch batch = db.batch();
      //   if (oldVersion == 1 || oldVersion == 2) {
      //     batch.execute("""
      //   CREATE TABLE IF NOT EXISTS $tableDirectionsData (
      //     id INTEGER PRIMARY KEY AUTOINCREMENT,
      //     $columnDirectionsLongitudeOrigin REAL NOT NULL,
      //     $columnDirectionsLatitudeOrigin REAL NOT NULL,
      //     $columnDirectionsLongitudeDestination REAL NOT NULL,
      //     $columnDirectionsLatitudeDestination REAL NOT NULL,
      //     $columnDirectionsTimestamp TIMESTAMP NOT NULL,
      //     $columnDirectionsData TEXT NOT NULL
      //   );
      //   """);
      //   }
      //   await batch.commit(continueOnError: false, noResult: true);
      // }
      );
    }
    return _db!;
  }

  void closeDB() {
    if (_db != null) _db!.close();
  }

  Future<int> insertRecord(String table, Map<String, Object?> values,
      {String? nullColumnHack,
      ConflictAlgorithm? conflictAlgorithm,
      bool isEncrypt = false}) async {
    final db = await openDB();
    return Future.value(await db.insert(table, values,
        nullColumnHack: nullColumnHack, conflictAlgorithm: conflictAlgorithm));
  }

  Future<int> insertRecordWithEncryption(
      Database db, String table, Map<String, Object?> values,
      {String? nullColumnHack,
      ConflictAlgorithm? conflictAlgorithm,
      bool isEncrypt = false}) async {
    return Future.value(await db.insert(table, values,
        nullColumnHack: nullColumnHack, conflictAlgorithm: conflictAlgorithm));
  }

  Future<int> updateRecord(String table, Map<String, Object?> values,
      {String? where,
      List<Object?>? whereArgs,
      ConflictAlgorithm? conflictAlgorithm,
      bool isEncrypt = false}) async {
    final db = await openDB();
    return Future.value(db.update(table, values,
        where: where,
        whereArgs: whereArgs,
        conflictAlgorithm: conflictAlgorithm));
  }

  Future<int> deleteRecord(String table,
      {String? where, List<Object?>? whereArgs, bool isEncrypt = false}) async {
    final db = await openDB();
    return Future.value(db.delete(table, where: where, whereArgs: whereArgs));
  }

  Future<List<Map<String, dynamic>>> queryRecords(String table,
      {bool? distinct,
      List<String>? columns,
      String? where,
      List<Object?>? whereArgs,
      String? groupBy,
      String? having,
      String? orderBy,
      int? limit,
      int? offset,
      bool isEncrypt = false}) async {
    final db = await openDB();
    List<Map<String, dynamic>> result = await db.query(table,
        distinct: distinct,
        columns: columns,
        where: where,
        whereArgs: whereArgs,
        groupBy: groupBy,
        having: having,
        orderBy: orderBy,
        limit: limit,
        offset: offset);

    return result;
  }

  Future<void> executeQuery(String sql, [List<Object?>? arguments]) async {
    final db = await openDB();
    db.execute(sql, arguments);
  }

  Future<List<Map<String, dynamic>>> rawQuery(String sql,
      [List<Object?>? arguments]) async {
    final db = await openDB();
    return db.rawQuery(sql, arguments);
  }
}
