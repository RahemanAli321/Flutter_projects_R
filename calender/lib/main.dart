import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calender_widget(),
    );
  }
}

class Calender_widget extends StatefulWidget {
  @override
  _Calender_widgetState createState() => _Calender_widgetState();
}

class _Calender_widgetState extends State<Calender_widget> {
  CalendarController _Controller;
  void initState() {
    super.initState();
    _Controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calender"),
      ),
      body: Column(
        children: [
          TableCalendar(
            initialCalendarFormat: CalendarFormat.month,
            calendarController: _Controller,
            calendarStyle: CalendarStyle(
              todayStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              todayColor: Colors.red,
              selectedColor: Colors.black,
            ),
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonDecoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadiusDirectional.circular(8.0),
              ),
              formatButtonShowsNext: false,
            ),
          )
        ],
      ),
    );
  }
}
