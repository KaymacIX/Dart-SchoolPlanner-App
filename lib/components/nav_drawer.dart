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

            SizedBox(
              height: 20,
            ),

            Text(
              "School Planner",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            Divider(),

            SizedBox(height: 20,),
            //OVERVIEW TILE
            ListTile(
              title: Text("Overview",
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
      ),
    );
  }
}
