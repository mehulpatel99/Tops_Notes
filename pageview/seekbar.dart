import 'package:flutter/material.dart';

class myslider extends StatefulWidget {
  const myslider({super.key});

  @override
  State<myslider> createState() => _mysliderState();
}

class _mysliderState extends State<myslider> {
  double myseekbarvalue = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: myseekbarvalue > 50 ? Colors.teal : Colors.yellow,
        child: Column(
          children: [
            Center(
              child: Text('$myseekbarvalue'),
            ),
            Slider(
              min: 0,
              max: 100,
                value: myseekbarvalue,
                onChanged: (value) {
                  setState(() {
                    myseekbarvalue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
