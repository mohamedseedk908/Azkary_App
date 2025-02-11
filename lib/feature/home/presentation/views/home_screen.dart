import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: WeekDaysList(),
    );
  }
}



class WeekDaysList extends StatefulWidget {
  @override
  State<WeekDaysList> createState() => _WeekDaysListState();
}

class _WeekDaysListState extends State<WeekDaysList> {
  @override
  Widget build(BuildContext context) {
    List<String> daysOfWeek = List.generate(7, (index) {
      return DateFormat.EEEE('ar').format(DateTime(2024, 2, 11 + index));
    });

    return Scaffold(
      appBar: AppBar(title: Text("أيام الأسبوع")),
      body: ListView.builder(
        itemCount: daysOfWeek.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(daysOfWeek[index], style: TextStyle(fontSize: 18)),
          );
        },
      ),
    );
  }
}

