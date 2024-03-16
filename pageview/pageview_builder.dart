import 'package:flutter/material.dart';

class mypageview2 extends StatefulWidget {
  const mypageview2({super.key});

  @override
  State<mypageview2> createState() => _mypageview2State();
}

class _mypageview2State extends State<mypageview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            color: Colors.amber,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('Assets/image/pizza.jpg'),
              child: Text('Pizza',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.teal[200]),),
            ),
          ),
            Container(
            color: Colors.pink,
            child: CircleAvatar(
              backgroundColor: Colors.black,
               child: Text('Pizza',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.teal[200]),),
            ),
          ),

        ],
      ),
    );
  }
}