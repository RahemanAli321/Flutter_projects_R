import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 11',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Day 11"),
        ),
        body: Forms(),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Your name",
              labelText: "Name",
              icon: Icon(Icons.person),
            ),
            validator: (value){
              if(value.isEmpty){
                    return 'Please Fill the details ';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password",
              icon: Icon(Icons.lock),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Github",
              labelText: "Github Link",
              icon: Icon(Icons.link),
            ),
          ),
          Container(
            child: RaisedButton(
                child: RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                if(keys.currentState.validate()){
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Vaalidation is Going"),));
                }
              },
            )),
          )
        ],
      ),
    );
  }
}
