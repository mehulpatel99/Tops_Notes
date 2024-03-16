import 'package:flutter/material.dart';

class dashboardscreen extends StatelessWidget {
  const dashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.green,
          child: Center(
            child: Text(
              'Gmail',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
