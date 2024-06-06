import 'package:flutter/material.dart';

class EventForm extends StatelessWidget {
  const EventForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: "Event"),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "Event name is required";
        }


      },
    );

  }
}
