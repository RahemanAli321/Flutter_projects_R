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
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Basic alert"),
            onPressed: () async {
              // textfieldalertdialogwidget(context, _textEditingController);
              // alertdialogwidget(context);
              // final field fieldatt = await confirmalertdialogwidget(context);
              // print("User Selection $fieldatt");
              final selectopt option = await selectionlertdialogwidget(context);
              print(option);
            },
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
        return AlertDialog(
          title: Text("basic"),
          content: Text("This is for Notification Purppose!!"),
          actions: [
            RaisedButton(
              child: Text("OK"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

textfieldalertdialogwidget(
    BuildContext context, TextEditingController textEditingcontroller) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("TExt Field"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter whatever you want"),
            controller: textEditingcontroller,
          ),
          actions: [
            RaisedButton(
              child: Text("OK"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

enum field { Confirm, Accept }
Future<field> confirmalertdialogwidget(BuildContext context) async {
  showDialog<field>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm"),
          content: Text("This is for Notification purpose!!!"),
          actions: [
            RaisedButton(
              child: Text("Cancel"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop(field.Confirm);
              },
            ),
            RaisedButton(
              child: Text("Accept"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop(field.Accept);
              },
            ),
          ],
        );
      });
}

enum selectopt { C, JAVA, PYTHON, KOTLIN }
Future<selectopt> selectionlertdialogwidget(BuildContext context) async {
  showDialog<selectopt>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Choose any one"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.C);
              },
              child: Text("C"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.JAVA);
              },
              child: Text("JAVA"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.PYTHON);
              },
              child: Text("PYTHON"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.KOTLIN);
              },
              child: Text("KOTLIN"),
            ),
          ],
        );
      });
}
