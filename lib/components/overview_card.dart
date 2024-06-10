import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String dayOfWeek;
  final String date;
  final List<String> eventList;


  const OverviewCard({
    super.key,
    required this.dayOfWeek,
    required this.date,
    required this.eventList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14),
      decoration: const BoxDecoration(
        // color: Color(0xff536271)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Text(dayOfWeek,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
              ),
              const Spacer(),
              Text(date,
                style: const TextStyle(
                  color: Color(0xff959EAA),
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),


          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: const Color(0xff536271),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20,),
                for (String event in eventList)
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      // CupertinoCheckbox(value: false, onChanged: (value){}),

                      Text(event,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white
                          ),
                          ),
                    ],
                  )
                  ),
              ],
            ),
          ),
        ],
      ),

    )
    ;
  }
}
