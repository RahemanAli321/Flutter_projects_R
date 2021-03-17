import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _ImageSlider(),
    );
  }
}

class tooltip_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Tooltip(
          waitDuration: Duration(seconds: 2),
          showDuration: Duration(seconds: 3),
          textStyle: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          message: "Set Alarm",
          child: FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.alarm,
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sliders")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              Icons.volume_up,
              size: 50,
            ),
          ),
          Expanded(
            child: Slider(
              value: _value.toDouble(),
              max: 20,
              min: 1,
              activeColor: Colors.green,
              inactiveColor: Colors.red,
              label: "set up volume",
              onChanged: (double newvalue) {
                setState(() {
                  _value = newvalue.round();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: ImageSlider(context),
      constraints: BoxConstraints.expand(
        height: 100,
      ),
    );
  }
}

Swiper ImageSlider(BuildContext context) {
  return new Swiper(
    autoplay: true,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return Image.network(
        "https://image.cnbcfm.com/api/v1/image/104819285-thor.jpg?v=1529476684&w=630&h=354",
        fit: BoxFit.cover,
      );
    },
  );
}
