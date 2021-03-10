import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App11",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icons Widget"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 40,
                    textDirection: TextDirection.rtl,
                  ),
                  Text("Home")
                ],
              ),
              SizedBox(width:20,),
              Column(
                children: [
                  Icon(
                    Icons.access_alarm,
                    color: Colors.black,
                    size: 40,
                    textDirection: TextDirection.rtl,
                  ),
                  Text("Alarm")
                ],
              ),
              SizedBox(width:20,),
              Column(
                children: [
                  Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                    textDirection: TextDirection.rtl,
                  ),
                  Text("Delete")
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
