import 'package:flutter/material.dart';

class mycircle1 extends StatelessWidget {
  const mycircle1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle image'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
          child: Center(
        child:
         CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 100,
          backgroundImage: AssetImage('Assets/image/Flutter.png'),
        ),
      )),
    );
  }
}
