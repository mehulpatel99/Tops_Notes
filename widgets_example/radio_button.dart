import 'package:flutter/material.dart';

class radio extends StatefulWidget {
  const radio({super.key});

  @override
  State<radio> createState() => _radioState();
}

enum mytech { c, Flutter, Java }

class _radioState extends State<radio> {
  mytech _mygrpvalue = mytech.c;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radiobutton'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('C language'),
            subtitle: Text('This is c class'),
            leading: Image.asset('Assets/image/bg.jpg'),
            trailing: Radio(
                value: mytech.c,
                groupValue: _mygrpvalue,
                onChanged: (value) {
                  setState(() {
                    _mygrpvalue = value!;
                  });
                }),
          ),

           ListTile(
            leading: Image.asset('Assets/image/bg.jpg'),
            subtitle: Text('This is flutter language'),
            title: Text('Flutter language'),
            trailing: Radio(
                value: mytech.Flutter,
                groupValue: _mygrpvalue,
                onChanged: (value) {
                  setState(() {
                    _mygrpvalue=value!;
                  });
                }),
          ),

           ListTile(
            title: Text('Java language'),
            leading: Image.asset('Assets/image/mehul.jpg'),
            subtitle: Text('This is java class'),
            trailing: Radio(
                value: mytech.Java,
                groupValue: _mygrpvalue,
                onChanged: (value) {
                  setState(() {
                    _mygrpvalue=value!;
                  });
                }),
          )
        ],
      ),
    );
  }
}
