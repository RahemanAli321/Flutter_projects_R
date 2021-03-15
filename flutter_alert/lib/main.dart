import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ALertWidget(),
    );
  }
}

class ALertWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Basic alert"),
            onPressed: () {},
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

alertdialogwidget(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return ALertWidget();
      });
}
