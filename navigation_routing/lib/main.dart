import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/Second': (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Click Me !"),
            onPressed: () {
              Navigator.pushNamed(context, '/Second');
            },
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Back to first !"),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
