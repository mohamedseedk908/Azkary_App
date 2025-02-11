import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/table_calendar_widget.dart';


class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height, // يمنع التمدد اللانهائي
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TableCalendarWidget(),
                  SizedBox(height: 10),
                  Divider(color: Colors.black, thickness: 2),
                  CustomDateTime(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class CustomDateTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String today = DateFormat('EEEE، d MMMM yyyy', 'ar').format(DateTime.now());

    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        "📅 اليوم: $today",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}