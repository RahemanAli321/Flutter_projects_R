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
        body: Snack_bar(),
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
          Center(
            child: Container(
              margin: EdgeInsets.all(150),
              child: loading
                  ? LinearProgressIndicator()
                  : Text("please click to..."),
            ),
          ),
          RaisedButton(
            child: Text("download"),
            color: Colors.red,
            onPressed: () {
              setState(() {
                loading = !loading;
              });
            },
          ),
        ],
      ),
    );
  }
}

class Circular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}

class Snack_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        child: Text("Snack bar"),
        color: Colors.red,
        onPressed: () {
          final msg = SnackBar(
            content: Text("this"),
            duration: Duration(
              seconds: 1,
            ),
          );
          Scaffold.of(context).showSnackBar(msg);
        },
      ),
    );
  }
}
