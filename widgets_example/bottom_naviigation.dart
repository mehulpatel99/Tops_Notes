import 'package:flutter/material.dart';
import 'package:myproject/practice/list.dart';

class mybtm extends StatefulWidget {
  const mybtm({super.key});

  @override
  State<mybtm> createState() => _mybtmState();
}

class _mybtmState extends State<mybtm> {
  int myindex = 0;
 static List<Widget> mynavigation = [
    Text(
      'Home',
      style: TextStyle(fontSize: 26),
    ),
    Text(
      'Account',
      style: TextStyle(fontSize: 26),
    ),
    Text(
      'Setting',
      style: TextStyle(fontSize: 26),
    )
  ];
  void navi(int index) {
    setState(() {
      myindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation bar'),
      ),
      body: Center(
        child: mynavigation.elementAt(myindex),
      ),



      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Account',
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'setting',
              backgroundColor: Colors.cyan),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: myindex,
        onTap: navi,
        selectedItemColor: Colors.black,
        elevation: 0,
        // backgroundColor: Colors.pink[200],
      ),
    );
  }
}
