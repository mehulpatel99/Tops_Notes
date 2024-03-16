import 'package:flutter/material.dart';
class mypageview extends StatefulWidget {
  const mypageview({super.key});

  @override
  State<mypageview> createState() => _mypageviewState();
}

class _mypageviewState extends State<mypageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            color: Colors.amber,
            height: 300,
            width: 300,
          ),
          Container(
            color: Colors.black,
            height: 300,
            width: 300,
          ),
          Container(
            color: Colors.pink,
            height: 300,
            width: 300,
          )
        ],
      ),
    );
  }
}