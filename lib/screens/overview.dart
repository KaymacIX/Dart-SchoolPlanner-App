import 'package:flutter/material.dart';
import 'package:student_planner/components/floating_add_button.dart';
import 'package:student_planner/components/nav_drawer.dart';
import 'package:student_planner/components/overview_card.dart';
// import 'package:sqflite/sqflite.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      drawer: const NavDrawer(),
      backgroundColor: const Color(0xff2c3d55),
      appBar: AppBar(

        centerTitle: false,
        backgroundColor: const Color(0xff2c3d55),
        elevation: 0.0,
        title: const Text(
          "Overview",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            OverviewCard(dayOfWeek: "Today", date: "6/06/2024", eventList: ["Programming Presentation","3301 Class"]),
            OverviewCard(dayOfWeek: "Tomorrow", date: "7/06/2024", eventList: ["3301 Class", "3600 Class"]),
            OverviewCard(dayOfWeek: "Wednesday", date: "8/06/2024", eventList: ["Study Break"]),
            OverviewCard(dayOfWeek: "Thursday", date: "9/06/2024", eventList: ["Programming Presentation","3301 Class"]),
            OverviewCard(dayOfWeek: "Friday", date: "10/06/2024", eventList: ["3301 Class", "3600 Class"]),
            OverviewCard(dayOfWeek: "Saturday", date: "11/06/2024", eventList: ["Study Break"]),
          ],
        ),
        

      ),
      floatingActionButton: const AddButton(),
    );
  }
}
