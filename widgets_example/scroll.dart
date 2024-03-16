import 'package:flutter/material.dart';

class myscroll extends StatelessWidget {
  const myscroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scrollview'),
        leading: Icon(Icons.play_circle_filled),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.deepPurple),
                height: 100,
                width: 200,
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                // color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'Assets/image/eagle.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.orange,
              ),
            ]),
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.black,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.orange,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.pink,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.grey,
          )
        ]),
      ),
    );
  }
}
