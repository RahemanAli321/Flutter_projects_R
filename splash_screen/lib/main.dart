import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_screen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class splash_screen1 extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen1> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.network(
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("welcome"),
      ),
    );
  }
}

class SplashScrreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomePage(),
      title: Text("E-Learning"),
      image: Image.network(
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
      photoSize: 300.0,
      loadingText: Text("Loading"),
      loaderColor: Colors.blueAccent,
    );
  }
}
