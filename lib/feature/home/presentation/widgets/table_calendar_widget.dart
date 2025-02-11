import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../core/utils/app_colors.dart';

class TableCalendarWidget extends StatefulWidget {
  const TableCalendarWidget({super.key});

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  CalendarFormat calendarFormat = CalendarFormat.month; // نوع عرض التقويم
  DateTime _focusedDay = DateTime.now(); // اليوم المحدد
  DateTime? _selectedDay; // اليوم الذي يختاره المستخدم
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: _focusedDay,
          calendarFormat: calendarFormat,
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
              color: AppColors.black,
              shape: BoxShape.rectangle,
            ),
            selectedDecoration: BoxDecoration(
              color: AppColors.black,
              shape: BoxShape.rectangle,
            ),
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekendStyle:
                TextStyle(color: Colors.red), // لون عطلة نهاية الأسبوع
          ),
        ),
        Divider(color: Colors.black, thickness: 2),
        if (_selectedDay != null)
          Text(
            "${_selectedDay!.day} / ${_selectedDay!.month} / ${_selectedDay!.year}",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
      ],
    );
  }
}
