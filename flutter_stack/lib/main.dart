import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'APP 10',
       home: Scaffold(
         appBar: AppBar(
           title:Text("Day 10"),

           ),
           body: Center(
             child: Stack(
               fit: StackFit.passthrough,
               overflow: Overflow.visible,
               children: [
                 Container(
                   height: 300,
                   width: 400,
                   color: Colors.green,
                   child: Center(
                     child: Text(
                          "Hellggo",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                     ),
                   ),
                 ),
               ],
             ),
             ),
       ),
       
    );
  }
}