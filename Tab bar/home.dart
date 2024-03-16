import 'package:flutter/material.dart';

class tabgrp extends StatelessWidget {
  const tabgrp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.grey,
          child: Text('Home'),
        ),
      ),
    );
  }
}