import 'package:flutter/material.dart';
import 'package:student_planner/screens/add_event.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return AddEvent();
          },
      )),
      backgroundColor: Color(0xffD9D9D9),
      splashColor: Color(0xff2c3d55),
      shape: CircleBorder(),
      child: const Icon(
        Icons.add, 
        size: 50,
        color: Color(0xff2c3d55),
      ),
    );
  }
}
