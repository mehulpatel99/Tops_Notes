import 'package:flutter/material.dart';

class setting_screen extends StatelessWidget {
  const setting_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.amber,
        child: Text('Settings',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}