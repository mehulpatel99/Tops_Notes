import 'package:flutter/material.dart';

class MyRadioExample1 extends StatefulWidget {
  const MyRadioExample1({super.key});

  @override
  State<MyRadioExample1> createState() => _MyRadioExample1State();
}

class _MyRadioExample1State extends State<MyRadioExample1> {
  // variable for radio value
  String? gender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("RadioButton Example"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  }),
              Text("Male")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: "Female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  }),
              Text("Female")
            ],
          ),
          Text("Gender = ${gender}")
        ],
      ),
    );
  }
}
