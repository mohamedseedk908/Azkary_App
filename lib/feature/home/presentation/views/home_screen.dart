import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month; // نوع عرض التقويم
  DateTime _focusedDay = DateTime.now(); // اليوم المحدد
  DateTime? _selectedDay; // اليوم الذي يختاره المستخدم

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("التقويم الإسلامي 📅")),
      body: Column(
        children: [
          // ✅ عرض التقويم
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            headerStyle: HeaderStyle(
              formatButtonVisible: false, // إخفاء زر تغيير العرض
              titleCentered: true, // جعل العنوان في المنتصف
            ),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(color: Colors.red), // لون عطلة نهاية الأسبوع
            ),
          ),

          SizedBox(height: 20),

          // ✅ عرض اليوم المحدد أسفل التقويم
          if (_selectedDay != null)
            Text(
              "اليوم المختار: ${_selectedDay!.day} / ${_selectedDay!.month} / ${_selectedDay!.year}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
