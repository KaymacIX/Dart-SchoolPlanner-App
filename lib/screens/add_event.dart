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
        backgroundColor: const Color(0xff2c3d55),


        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back,
            color: Colors.white,
            ),
          ),
          title: const Text(
            "Add Event",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            ElevatedButton(
                onPressed: () {},
                child: const Text("Add")
            )
          ],
          backgroundColor: const Color(0xff2c3d55),
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
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                    const Text("Active",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    CupertinoSwitch(value: true, onChanged: (value) {})

                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // DAY SELECTOR
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
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
                    
                    const Text("Day",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    
                    const Spacer(),

                    // CupertinoDatePicker(onDateTimeChanged: (value){}),

                    DropdownButton(
                      value: 'Monday', // Assign the value to get a preview
                      items: const [
                        DropdownMenuItem(
                          value: 'Monday',
                          child: Text('Monday',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Tuesday',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Wednesday',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Thursday',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Friday',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Saturday',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                        DropdownMenuItem(
                          value: 'Tuesday',
                          child: Text('Sunday',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
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
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(
                  color: Color(0xff536271),
                  ),
                height: 60,
                child: const Row(
                  children: [

                      Text("Time",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                    
                    Spacer(),
                    
                    // TimePickerDialog(initialTime: TimeOfDay(hour: 10, minute: 30))
                    // DropdownButton(items: CupertinoDatePicker, onChanged: onChanged)
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),


              // IS REPEATING
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

                  children: [
                    const Text("Repeat",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),),
                    const Spacer(),
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
