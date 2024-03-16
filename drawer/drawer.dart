import 'package:flutter/material.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mydrawer'),
      ),
      body: Container(
        child: Text('mynavigationdrawer'),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Mehul'),
              accountEmail: Text('Mehulpatel@email.com')),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
