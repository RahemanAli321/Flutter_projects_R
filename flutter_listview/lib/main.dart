import 'package:flutter/material.dart';

void main() {
//   runApp(HorizontalList(
//       // names: List<String>.generate(50, (a) => "HEllo Coders ${a + 1}")));
// }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Lists', home: HorizontalList());
  }
}

class BasicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic List"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Contact"),
          ),
        ],
      ),
    );
  }
}

class LongList extends StatelessWidget {
  final List<String> names;
  LongList({Key key, this.names}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lists',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Long List"),
          ),
          body: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Hii ${names[index]}"),
                );
              }),
        ));
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Horizotal")),
      ),
      body: Container(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 146,
              color: Colors.red,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              width: 146,
              color: Colors.green,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              width: 146,
              color: Colors.lightGreen,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              width: 146,
              color: Colors.black,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              width: 146,
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              width: 146,
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              width: 146,
              color: Colors.yellow,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              width: 146,
              color: Colors.brown,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
