import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App1",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Day 1",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          // leading: Icon(Icons.home),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
            child: Text(
          "Hello KurbanAli",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        )),
      ),
    );
  }
}
