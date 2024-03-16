import 'package:flutter/material.dart';
import 'package:myproject/practice/list.dart';
import 'package:myproject/widgets_example/image_class.dart';

class br extends StatelessWidget {
  final Text? txt;

  br({
    required this.txt,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage('Assets/image/mehul.jpg'),
        ),
        Text('$txt'),
      ]),
    );
  }
}

class grid2 extends StatelessWidget {
  const grid2({super.key});

  static const List<String> img = [
    'mehul.jpg',
    'bg.jpg',
    'khushi.jpg',
    'login.png',
    'mehul2.jpg',
    'pizza.jpg',
    'rashmika.jpg',
    'eagle.png'
  ];

  @override
  Widget build(BuildContext context) {
    var ind = ['mehul', 'buy', 'sale', 'view', 'add', 'sale', 'view', 'add'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
      ),
      body:
          // Column(
          //   children: [
          //     Row(children: [
          // br(),
          //     ],),
          Container(
        color: Colors.teal[200],
        padding: EdgeInsets.all(5),
        child: GridView.builder(
            itemCount: img.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 7.0,
            ),
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      width: 700,
                      child: Image.asset('Assets/image/${img[index]}'),
                    ),
                    Container(
                      child: Text(
                        ind[index],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
      //   ],
      // ),
    );
  }
}
