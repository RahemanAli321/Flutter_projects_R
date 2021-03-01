import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Container Widget"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
          backgroundColor: Colors.blueGrey,

        ),
        body: Container(
          height: 100,
          width: 100,
          // margin: EdgeInsets.all(40),
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          child: Text("Hello"),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 4, color: Colors.black),
            color: Colors.green,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.orange, offset: Offset(6,6)
              )
            ]
          ),
          transform: Matrix4.rotationZ(0.1),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
