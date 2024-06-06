import 'package:flutter/material.dart';
import 'package:student_planner/components/nav_drawer.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      backgroundColor: Color(0xff2c3d55),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xff2c3d55),
        elevation: 0.0,
        title: const Text(
          "Agenda",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
