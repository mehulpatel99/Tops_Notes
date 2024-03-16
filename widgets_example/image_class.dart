
import 'package:flutter/material.dart';
class img extends StatelessWidget {
  final Image? bgimg;
  // final Color? bgcolor;

  img({
    required this.bgimg,
    //  required this.bgcolor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      // color: bgcolor,
      child: bgimg,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.teal),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
class img2 extends StatelessWidget {
  const img2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: img(bgimg: Image.asset('Assets/image/pizza.jpg',))
      ),
    );
  }
}