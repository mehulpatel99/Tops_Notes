import 'package:flutter/material.dart';

class MyRadioListExample extends StatefulWidget {
  const MyRadioListExample({super.key});

  @override
  State<MyRadioListExample> createState() => _MyRadioListExampleState();
}

class _MyRadioListExampleState extends State<MyRadioListExample> {
  String? cricketer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("RadioList Example"),
      ),
      body: Column(
        children: [
          Text(
            "Choose Your Faviourite Cricketer ",
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          RadioListTile(
              value: "MS Dhoni",
              groupValue: cricketer,
              title: Text("MS Dhoni"),
              onChanged: (value) {
                setState(() {
                  cricketer = value;
                });
              }),
          RadioListTile(
              value: "Rohit Sharma",
              groupValue: cricketer,
              title: Text("Rohit Sharma"),
              onChanged: (value) {
                setState(() {
                  cricketer = value;
                });
              }),
          RadioListTile(
              value: "Babar Azam",
              groupValue: cricketer,
              title: Text("Babar Azam"),
              onChanged: (value) {
                setState(() {
                  cricketer = value;
                });
              }),
        ],
      ),
    );
  }
}
