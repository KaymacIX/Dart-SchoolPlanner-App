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

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: ListView(
          children: [

            const SizedBox(
              height: 20,
            ),

            const Text(
              "School Planner",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            const Divider(),

            const SizedBox(height: 20,),
            //OVERVIEW TILE
            ListTile(
              title: const Text("Overview",
              style: TextStyle(
                color: Colors.white,
              )
              ),
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const Overview();
                },
              )),
            ),

            //TIMETABLE TILE
            ListTile(
              title: const Text("Timetable",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const Timetable();
                },
              )),
            ),

            //CALENDAR TILE
            ListTile(
              title: const Text("Calendar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const Calendar();
                },
              )),
            ),

            //AGENDA TILE
            ListTile(
              title: const Text("Agenda",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const Agenda();
                },
              )),
            )

          ],
        ),
      ),
    );
  }
}
