import 'package:flutter/material.dart';
import 'package:myproject/widgets_example/text_fetch2.dart';

class myfetch1 extends StatefulWidget {
  const myfetch1({super.key});

  @override
  State<myfetch1> createState() => _myfetch1State();
}

TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();

class _myfetch1State extends State<myfetch1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fetch data'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'enter your name'),
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(hintText: 'enter your email',),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fetch2(
                                name: _nameController.text.toString(),
                                email: _emailController.text.toString())));
                  },
                  child: Text('click')),
            )
          ],
        ));
  }
}
