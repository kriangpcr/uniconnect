import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 168, 40, 31),
              ),
              accountName: Text(
                "Nongmiddi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "Nongmild03@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/mild.jpeg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title: Text(
              "My Account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.cart,
              color: Colors.red,
            ),
            title: Text(
              "My Orders",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            title: Text(
              "Favourite",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.red,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              "Log out",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
