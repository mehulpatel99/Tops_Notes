import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  var m = 'Alert';
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert dialog'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(m)),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (status) {
                    m = "This is alert dialog";
                    status = false;
                  } else {
                    m = 'Alert';
                    status = true;
                  }
                });
              },
              child: Text('change'))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          myalert(context);
        },
        label: Text('close'),
        icon: Icon(Icons.close_fullscreen),
      ),
    );
  }

  void myalert(BuildContext context) {
    AlertDialog alertDialog = new AlertDialog(
      title: Text('Alert'),
      content: Text('Are you sure to clse'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
              SystemNavigator.pop();
            },
            child: Text('yes')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('no'))
      ],
    );
    showDialog(context: context, builder: (context) => alertDialog);
  }
}
