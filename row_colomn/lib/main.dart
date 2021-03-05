import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Container Widget"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Center(child: Text("Child 1")),
              height: 50,
              width: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration (
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(color: Colors.indigo,offset: Offset(12, 12)),
                ]
              ),
            ),
            Container(
              child: Center(child: Text("Child 2")),
              height: 50,
              width: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration (
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(color: Colors.indigo,offset: Offset(12, 12)),
                  ]
              ),
            ),
            Container(
              child: Center(child: Text("Child 3")),
              height: 50,
              width: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration (
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(color: Colors.indigo,offset: Offset(12, 12)),
                  ]
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Center(child: Text("asdfghjk"),),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.indigo,offset: Offset(2, 2)),
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Center(child: Text("asdfghjk"),),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.indigo,offset: Offset(2, 2)),
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Center(child: Text("asdfghjk"),),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.indigo,offset: Offset(2, 2)),
                    ]
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}