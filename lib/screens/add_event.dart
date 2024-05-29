import 'package:flutter/material.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c3d55),
      appBar: AppBar(
        title: Text("Add Event",
        style: TextStyle(
            color: Colors.white,
        ),),
        backgroundColor: Color(0xff2c3d55),
      ),
    );
  }
}
