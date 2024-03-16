import 'package:flutter/material.dart';

class myimage extends StatelessWidget {
  const myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('images'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
    Container(
      height: 200,
      width: 300,
      child: 
             Image.asset('Assets/image/eagle.png',fit: BoxFit.fill,),),
          SizedBox(height: 40,),
          Container(
            height: 200,
            width: 300,
            child: 
          Image.asset('Assets/image/pizza.jpg'),)
            ]
        ),
      ),
    )
    );
  }
}