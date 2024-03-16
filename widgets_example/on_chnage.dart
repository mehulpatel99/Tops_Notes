import 'package:flutter/material.dart';

class onchange2 extends StatefulWidget {
  const onchange2({super.key});

  @override
  State<onchange2> createState() => _onchange2State();
}

class _onchange2State extends State<onchange2> {
  @override
  Widget build(BuildContext context) {
    bool status = true;
    Color? bgcolor = Colors.grey;
    return Scaffold(
      appBar: AppBar(
        title: Text('change color'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            color: bgcolor,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (status) {
                    bgcolor = Colors.green;
                    status = false;
                  } else {
                    bgcolor = Colors.cyanAccent;
                    status = true;
                  }
                });
              },
              child: Text('change'))
        ],
      ),
    );
  }
}
