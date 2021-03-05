import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text and TextField",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text and TextField"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            Text(
              "User Login Form",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  backgroundColor: Colors.orange,
                  letterSpacing: 5,
                  wordSpacing: 10,
                  shadows: [Shadow(color: Colors.green, offset: Offset(2, 2))]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter Your Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Your Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
