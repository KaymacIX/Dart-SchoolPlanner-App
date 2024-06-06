import 'package:flutter/material.dart';
import 'package:student_planner/screens/overview.dart';
import 'package:student_planner/screens/loading_screen.dart';

void main() {
  runApp(const PlannerApp());
}

class PlannerApp extends StatelessWidget {
  const PlannerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Overview(),
    );
  }
}
