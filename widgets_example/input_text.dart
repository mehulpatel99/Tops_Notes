import 'package:flutter/material.dart';

class myinput1 extends StatefulWidget {
  const myinput1({super.key});

  @override
  State<myinput1> createState() => _myinput1State();
}

class _myinput1State extends State<myinput1> {
  TextEditingController _nameController = TextEditingController();
 String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input fetch data'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: _nameController,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = _nameController.text.toString();
                  });
                },
                child: Text('click')),
            Text('your value is = $name'),
          ],
        ),
      ),
    );
  }
}
