import 'package:flutter/material.dart';

class change2 extends StatefulWidget {
  const change2({super.key});

  @override
  State<change2> createState() => _change2State();
}

class _change2State extends State<change2> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnChange'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: status ? Colors.amber : Colors.cyan,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      status = false;
                    });
                  },
                  child: Text('click'))
            ],
          ),
        ),
      ),
    );
  }
}
