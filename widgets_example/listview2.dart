import 'package:flutter/material.dart';

class listview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mehul = ['mehul', 'sunil',];
    return Scaffold(
      appBar: AppBar(
        title: Text('listview'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                mehul[index],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              );
            },
            itemCount: mehul.length,
            separatorBuilder: (context, index) {
              return Divider(
                thickness: (8),
                height: (5),
              );
            },
          ),
        ),
      ),
    );
  }
}
