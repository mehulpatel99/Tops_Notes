

import 'package:flutter/material.dart';

class listview1 extends StatelessWidget {
  const listview1({super.key});

  @override
  Widget build(BuildContext context) {
    var name = ['mehul', 'sunil', 'vishal', 'Tashu'];
    return Scaffold(
        appBar: AppBar(
          title: Text('List view'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.amber[200],
            child: Center(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  // return Image(
                    // image: )
                  // Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),);
                },
                itemCount: name.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: (4),
                    height: (5),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
