import 'package:flutter/material.dart';

class drawerheader extends StatefulWidget {
  const drawerheader({super.key});

  @override
  State<drawerheader> createState() => _drawerheaderState();
}

class _drawerheaderState extends State<drawerheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      height: 100,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('title',style: TextStyle(fontSize: 30,color: Colors.white),),
          Text('email',style: TextStyle(fontSize: 25,color: Colors.white),)
        ],
      ),
    );
  }
}