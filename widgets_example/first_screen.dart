import 'package:flutter/material.dart';
import 'package:myproject/widgets_example/second_screen.dart';
// import 'package:myproject/second_screen.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFitstPage'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MySecondScreen(),
                    ));
              },
              child: Text('Click here')),
        ),
      ),
    );
  }
}
