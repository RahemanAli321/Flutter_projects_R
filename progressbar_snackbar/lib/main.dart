import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("progress bar"),
        ),
        body: Linear(),
      ),
    );
  }
}

class Linear extends StatefulWidget {
  @override
  _LinearState createState() => _LinearState();
}

class _LinearState extends State<Linear> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: loading
                ? LinearProgressIndicator()
                : Text("please click to..."),
          ),
          RaisedButton(
            child: Text("download"),
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
