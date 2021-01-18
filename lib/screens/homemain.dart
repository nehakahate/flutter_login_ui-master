import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/page.dart';

class homemain extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGO"),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ashish Rawat"),
            accountEmail: Text("ashishrawat2911@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            otherAccountsPictures: <Widget>[
              /*CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.blue
                      : Colors.white,
                  child: Text(
                    "B",
                  ),
                ),*/
              /* CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.blue
                      : Colors.white,
                  child: Text(
                    "C",
                  ),
                ),*/
            ],
          ),
          ListTile(
            title: Text("Bunddles"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewPage("Page")));
            },
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            title: Text("Winning Stricks"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewPage("Page two")));
            },
          ),
          ListTile(
            title: Text("How to Play"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewPage("Page two")));
            },
          ),
          ListTile(
            title: Text("My info & Settings"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewPage("Page two")));
            },
          ),
          Divider(),
          ListTile(
            title: Text("close"),
            trailing: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          )
        ],
      )),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromRGBO(47, 79, 79, 10)),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv, color: Color.fromRGBO(47, 79, 79, 10)),
              title: Text('Live')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,
                  color: Color.fromRGBO(47, 79, 79, 10)),
              title: Text('Matches')),
          BottomNavigationBarItem(
              icon: Icon(Icons.poll, color: Color.fromRGBO(47, 79, 79, 10)),
              title: Text('Poll')),
        ],
      ),
    );
  }
}
