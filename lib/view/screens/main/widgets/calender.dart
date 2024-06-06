import 'package:Taskify/core/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TableCalendar(
        onDaySelected: (selectedDay, focusedDay) {
          debugPrint('pressed');
          _selectedDate = selectedDay;
          _selectedDate = focusedDay;
          setState(() {});
        },
        headerStyle:
            HeaderStyle(titleCentered: true, formatButtonVisible: false),
        calendarFormat: CalendarFormat.month,
        firstDay: DateTime.now(),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: _selectedDate,
        calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: black)),
      ),
    );
  }
}
