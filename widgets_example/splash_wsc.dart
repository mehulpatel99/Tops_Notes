import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myproject/widgets_example/insta_page.dart';

class mysplash extends StatefulWidget {
  const mysplash({super.key});

  @override
  State<mysplash> createState() => _mysplashState();
}

class _mysplashState extends State<mysplash> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 4), () {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => insta()));
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mem();
  }

  mem() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => insta()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal[200],
        child: Center(
          child: Text(
            'Instagram',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
