import 'package:flutter/material.dart';
import 'package:myproject/widgets_example/whats.dart';

class fetch2 extends StatelessWidget {
  var name;
  var email;

  fetch2({@required this.name, @required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(children: [
            Text(
              'name=$name',
              style: TextStyle(fontSize: 20),
            ),
            Text('email=$email'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => whts()));
                },
                child: Text('PUsh'))
          ]),
        ),
      ),
    );
  }
}
