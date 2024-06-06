import 'package:flutter/material.dart';
import 'package:student_planner/components/floating_add_button.dart';
import 'package:student_planner/components/nav_drawer.dart';
// import 'package:sqflite/sqflite.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

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
          "Overview",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const SingleChildScrollView(

      ),
      floatingActionButton: const AddButton(),
    );
  }
}
