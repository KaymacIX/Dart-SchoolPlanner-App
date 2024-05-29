import 'package:flutter/material.dart';
import 'package:student_planner/screens/timetable.dart';
import 'package:student_planner/screens/calendar.dart';
import 'package:student_planner/screens/agenda.dart';
import 'package:student_planner/screens/overview.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff2c3d55),

      child: ListView(
        children: [
          DrawerHeader(child: const Text("Overview",
            style: TextStyle(
                color: Colors.white
            ),
          )
          ),
          //OVERVIEW TILE
          ListTile(
            title: Text("Overview",
            style: TextStyle(
              color: Colors.white,
            )
            ),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return Overview();
              },
            )),
          ),

          //TIMETABLE TILE
          ListTile(
            title: Text("Timetable",
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return Timetable();
              },
            )),
          ),

          //CALENDAR TILE
          ListTile(
            title: Text("Calendar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return Calendar();
              },
            )),
          ),

          //AGENDA TILE
          ListTile(
            title: Text("Agenda",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return Agenda();
              },
            )),
          )

        ],
      ),
    );
  }
}
