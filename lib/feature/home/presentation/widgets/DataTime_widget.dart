import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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