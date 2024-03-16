import 'package:flutter/material.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  bool isplay = false;
  bool islearn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check box'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('cricket'),
              Checkbox(
                checkColor: Colors.black,
                  value: this.isplay,
                  onChanged: (value) {
                    setState(() {
                      this.isplay = value!;
                    });
                  })
            ],
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('football'),
              Checkbox(
                checkColor: Colors.black,
                  value: this.islearn,
                  onChanged: (value) {
                    setState(() {
                      this.islearn = value!;
                    });
                  })
            ],
          ),
        ],
      ),
    );
  }
}
