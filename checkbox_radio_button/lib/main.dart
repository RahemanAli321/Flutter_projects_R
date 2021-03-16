import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum Gender { Male, Female, Prefer_not_to_say }

class _MyAppState extends State<MyApp> {
  bool firstbox = false;
  bool secondbox = false;
  Gender gender = Gender.Male;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CheckBox & Radio Button"),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Hobby",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Row(
                children: [
                  Text("Painting"),
                  Checkbox(
                    activeColor: Colors.greenAccent,
                    checkColor: Colors.red,
                    value: this.firstbox,
                    onChanged: (bool value) {
                      setState(() {
                        this.firstbox = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Singing"),
                  Checkbox(
                    checkColor: Colors.blue,
                    value: this.secondbox,
                    onChanged: (bool value) {
                      setState(() {
                        this.secondbox = value;
                      });
                    },
                  ),
                ],
              ),
              CheckboxListTile(
                title: Text("Hey Whats up"),
                subtitle: Text("Fine!!"),
                secondary: Icon(Icons.call),
                value: this.firstbox,
                onChanged: (bool value) {
                  this.firstbox = value;
                },
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Male,
                  groupValue: gender,
                  onChanged: (Gender value) {
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("Male"),
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Female,
                  groupValue: gender,
                  onChanged: (Gender value) {
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("FeMale"),
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Prefer_not_to_say,
                  groupValue: gender,
                  onChanged: (Gender value) {
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("Prefer_not_to_say"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
