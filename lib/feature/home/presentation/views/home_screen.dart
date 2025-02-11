import 'package:azkary_app/feature/home/presentation/widgets/DataTime_widget.dart';
import 'package:flutter/material.dart';
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
