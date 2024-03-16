import 'package:flutter/material.dart';

class mydecorate extends StatelessWidget {
  const mydecorate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('decoration'),
      ),
      body: Container(
        height: 300,
        width: double.maxFinite,
        // transform: Matrix4.rotationZ(0.2),
        margin: EdgeInsets.only(left: 30, right: 30, top: 30),
        padding: EdgeInsets.only(top: 30, left: 30),
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            // bottomLeft: Radius.elliptical(300, 500),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Text(
          'This is decoration',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent),
        ),
      ),
    );
  }
}
