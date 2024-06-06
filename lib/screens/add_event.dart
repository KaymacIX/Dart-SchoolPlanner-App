import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_planner/services/sqlite/sqlite_utils.dart';
import 'package:student_planner/components/event_form.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2c3d55),


        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back,
            color: Colors.white,
            ),
          ),
          title: const Text(
            "Add Event",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            ElevatedButton(
                onPressed: () {},
                child: Text("Add")
            )
          ],
          backgroundColor: Color(0xff2c3d55),
        ),


        body: Padding(
          padding: const EdgeInsets.only(left: 27, right: 27, top: 20),


          // TEXT FORM FIELD
          child: Column(
            children: [

              // EVENT NAME
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(
                  color: Color(0xff536271),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                height: 60,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Event",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 2,
              ),

              // IS ACTIVE SELECTOR
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(
                  color: Color(0xff536271),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Active"),
                    Spacer(),
                    CupertinoSwitch(value: true, onChanged: (value) {})

                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // DAY SELECTOR
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(
                  color: Color(0xff536271),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                height: 60,
                child: Row(
                  children: [
                    
                    Text("Day",

                    ),
                    
                    Spacer(),

                    DropdownButton(
                      value: 'Monday', // Assign the value to get a preview
                      items: [
                        DropdownMenuItem(
                          value: 'Monday',
                          child: Text('Monday'),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Tuesday'),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Wednesday'),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Thursday'),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Friday'),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Saturday'),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Sunday'),
                        ),
                      ], onChanged: (value) {},
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),


              // TIME SELECTOR
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(
                  color: Color(0xff536271),
                  ),
                height: 60,
                child: Row(
                  children: [

                      Text("Time"),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),


              // IS REPEATING
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(
                  color: Color(0xff536271),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                height: 60,
                child: Row(

                  children: [
                    Text("Repeat"),
                    Spacer(),
                    CupertinoSwitch(value: true, onChanged: (value) {})
                  ],
                ),
              ),

            ],
          )



          //TEXT FORM FIELD
        ),
    );
  }
}
