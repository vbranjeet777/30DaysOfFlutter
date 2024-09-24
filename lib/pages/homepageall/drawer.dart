import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250.0,
      backgroundColor: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0.0),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              margin: EdgeInsets.all(0.0),
              accountName:
                  Text("Ranjeet", style: TextStyle(color: Colors.white)),
              accountEmail: Text(
                "vbranjeet777@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/boy.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              textScaler: TextScaler.linear(1.0),
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              textScaler: TextScaler.linear(1.0),
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              textScaler: TextScaler.linear(1.0),
              "Email Me",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.white,
            ),
            title: Text(
              textScaler: TextScaler.linear(1.0),
              "Phone No.",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.link,
              color: Colors.white,
            ),
            title: Text(
              textScaler: TextScaler.linear(1.0),
              "Website Link",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
