import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tabelwidget(),
    );
  }
}

class switch_widget extends StatefulWidget {
  @override
  _switch_widgetState createState() => _switch_widgetState();
}

class _switch_widgetState extends State<switch_widget> {
  bool switch_state = false;
  var Textvalue = "SWITCH IS OFF";
  Color myColor = Colors.red;
  void display_state(bool value) {
    setState(() {
      switch_state = !switch_state;
      myColor = switch_state ? Colors.red : Colors.green;
      Textvalue = switch_state ? "SWITCH IS ON" : "SWITCH IS OFF";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Transform.scale(
              scale: 2,
              child: Switch(
                onChanged: display_state,
                value: switch_state,
                activeColor: Colors.green,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.blue,
              ),
            ),
          ),
          Text('$Textvalue')
        ],
      ),
    );
  }
}

class tabelwidget extends StatefulWidget {
  @override
  _tabelwidgetState createState() => _tabelwidgetState();
}

class _tabelwidgetState extends State<tabelwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(100),
          border: TableBorder.all(
            color: Colors.blueAccent,
            width: 4,
            style: BorderStyle.solid,
          ),
          children: [
            TableRow(children: [
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              )
            ]),
            TableRow(children: [
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              )
            ]),
            TableRow(children: [
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
