import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool firstbox = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CheckBox & Radio Button"),
        ),
        body: Container(
          child: Column(
            children: [
              Checkbox(
                value: this.firstbox,
                onChanged: (bool value){
                  
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
