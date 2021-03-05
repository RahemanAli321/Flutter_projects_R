import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text("Portfolio App"),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.lightBlueAccent,
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Center(
                      child: Text(
                        "K",
                        style: TextStyle(fontSize: 80, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 30, right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your Email",
                          labelText: "Email",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your password",
                          labelText: "Password",
                          icon: Icon(Icons.lock)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "GitHub",
                          labelText: "GitHub",
                          icon: Icon(Icons.link)),
                    ),
                  ),
                ),
                Container(
                    height: 40,
                    width: 200,
                    margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text("Update",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                    )),
              ],
            ),
          )),
    );
  }
}
