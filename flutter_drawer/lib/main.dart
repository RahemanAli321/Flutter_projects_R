
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "drawer",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
          backgroundColor: Colors.black,
        ),

        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Container(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Rahemanali Balospura",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        subtitle: Text("BCA",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                      ),
                    ),
                    ButtonBar(
                      children: [
                        RaisedButton(
                          child: Icon(Icons.call),
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                        RaisedButton(
                          child: Icon(Icons.person),
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
