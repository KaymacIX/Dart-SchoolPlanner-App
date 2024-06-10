import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String dayOfWeek;
  final String date;
  final List<String> eventlist;


  const OverviewCard({
    super.key,
    required this.dayOfWeek,
    required this.date,
    required this.eventlist,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        // color: Color(0xff536271)
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Text(dayOfWeek,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
              ),
              const Spacer(),
              Text(date,
                style: TextStyle(
                  color: Color(0xff959EAA),
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),


          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xff536271),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20,),
                for (String event in eventlist)
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      // CupertinoCheckbox(value: false, onChanged: (value){}),

                      Text(event,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white
                          ),
                          ),
                    ],
                  )
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
