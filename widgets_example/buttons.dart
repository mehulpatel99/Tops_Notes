import 'package:flutter/material.dart';

class mybuttons2 extends StatefulWidget {
  const mybuttons2({super.key});

  @override
  State<mybuttons2> createState() => _mybuttons2State();
}

class _mybuttons2State extends State<mybuttons2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('buttons')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
              child: TextButton(
                  onPressed: () {
                    print('Text button');
                  },
                  onLongPress: () {
                    print('longpress');
                  },
                  child: Text('Text'))),
          Container(
              child: ElevatedButton(
                  onPressed: () {
                    print('elevated button');
                  },
                  child: Text('elevated'))),
          Container(
              child: OutlinedButton(
                  onPressed: () {
                    print('outlined button');
                  },
                  child: Text('outlined'))),
        ]),
      ),
    );
  }
}
