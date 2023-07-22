import 'package:flutter/material.dart';
class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children:  [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/person-icon.png'),
            ),
            accountName: Text("Rahaf Munshi"),
            accountEmail: Text("R@gmail.com"),
          ),
          ListTile(
            title: Text("Home screen"),
            onTap: () {},
            splashColor: Colors.black26,
          ),
          ListTile(
            title: Text("About us"),
            onTap: () {},
            splashColor: Colors.black26,
          ),
          ListTile(
            title: Text("Transaction"),
            onTap: () {},
            splashColor: Colors.black26,
          ),
        ],
      ),
    );
  }
}
