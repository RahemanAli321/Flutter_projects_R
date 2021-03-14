import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Drawer", home: drawer());
  }
}

class Scaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("rb"),
              accountEmail: Text("rahemanali321@gmail.com"),
              currentAccountPicture: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage("assets/haircut.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Homepage();
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Homepage();
              },
            ),
            ListTile(
              leading: Icon(Icons.local_grocery_store),
              title: Text("local grocery"),
              onTap: () {
                Homepage();
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(29.0),
        child: Center(
          child: Container(
            height: 200,
            width: 300,
            child: Card(
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                      title: Text(
                        "rahemanali",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      subtitle: Text(
                        "BCA",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Home"),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Settingpage"),
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("StorePage"),
    );
  }
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("data"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "settings",
              ),
              Tab(
                icon: Icon(Icons.local_grocery_store),
                text: "store",
              ),
              Tab(
                icon: Icon(Icons.local_grocery_store),
                text: "store",
              ),
              Tab(
                icon: Icon(Icons.local_grocery_store),
                text: "store",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Scaff(),
            Homepage(),
            Homepage(),
            SettingPage(),
            StorePage(),
          ],
        ),
      ),
    ));
  }
}
