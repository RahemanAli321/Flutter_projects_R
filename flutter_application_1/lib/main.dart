import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  Widget button(String btntext) {
    return Expanded(
      child: RawMaterialButton(
        shape: Border.all(color: Colors.black, width: 2),
        fillColor: Colors.blueGrey,
        splashColor: Colors.black,
        padding: EdgeInsets.all(30.0),
        child: Text(
          "$btntext",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.black12,
                  ),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "OUTPUT",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                  ),
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(20),
                ),
              ),
              Row(
                children: [
                  button("C"),
                  SizedBox(
                    width: 5,
                  ),
                  button("0"),
                  SizedBox(
                    width: 5,
                  ),
                  button("*"),
                  SizedBox(
                    width: 5,
                  ),
                  button("/"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("9"),
                  SizedBox(
                    width: 5,
                  ),
                  button("8"),
                  SizedBox(
                    width: 5,
                  ),
                  button("7"),
                  SizedBox(
                    width: 5,
                  ),
                  button("+"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("6"),
                  SizedBox(
                    width: 5,
                  ),
                  button("5"),
                  SizedBox(
                    width: 5,
                  ),
                  button("4"),
                  SizedBox(
                    width: 5,
                  ),
                  button("-"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("3"),
                  SizedBox(
                    width: 5,
                  ),
                  button("2"),
                  SizedBox(
                    width: 5,
                  ),
                  button("1"),
                  SizedBox(
                    width: 5,
                  ),
                  button("="),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
