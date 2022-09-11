import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import 'item_task.dart';

class ListTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/paris.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
      Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.white,
            dayColor: Colors.white,
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.redAccent[100],
            dotsColor: Colors.black,
            selectableDayPredicate: (date) => date.day != null,
            locale: 'en_ISO',
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ItemTask(),
              itemCount: 20,
            ),
          )
        ],
      ),
    ]);
  }
}
