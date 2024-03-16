import 'package:flutter/material.dart';

class myswitch extends StatefulWidget {
  const myswitch({super.key});

  @override
  State<myswitch> createState() => _myswitchState();
}

class _myswitchState extends State<myswitch> {
  bool switchvalue = false;
  String textvalue ="Switch is off";
  void changeswitch(bool value) {
    if (switchvalue == true) {
      setState(() {
        switchvalue = false;
        textvalue = "switch is Off";
      });
    } else {
      setState(() {
        switchvalue = true;
        textvalue = "switch is On";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textvalue,style: TextStyle(fontSize: 30),),
              Switch(value: switchvalue, onChanged: changeswitch,
              activeColor: Colors.black,
              activeTrackColor: Colors.amber,
              inactiveTrackColor: Colors.deepPurple,
              inactiveThumbColor: Colors.purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
