import 'package:flutter/material.dart';
import 'package:myproject/widgets_example/first_screen.dart';
// import 'package:myproject/first_screen.dart';

class spls2 extends StatefulWidget {
  const spls2({super.key});

  @override
  State<spls2> createState() => _spls2State();
}

class _spls2State extends State<spls2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatehome();
  }

  navigatehome() async {
    await Future.delayed(Duration(microseconds: 1500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyFirstScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Icon(Icons.usb_rounded,size: 50,),
        ),
      ),
    );
  }
}
