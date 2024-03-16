import 'package:flutter/material.dart';
import 'package:myproject/Tab%20bar/home.dart';

class mytab extends StatefulWidget {
  const mytab({super.key});

  @override
  State<mytab> createState() => _mytabState();
}

class _mytabState extends State<mytab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'home',
            ),
            Tab(
              icon: Icon(Icons.add_a_photo_outlined),
              text: 'add',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'setting',
            )
          ]),
        ),
        body:TabBarView(children: [
          tabgrp(),
          tabgrp(),
          tabgrp()
        ]),
      ),
    );
  }
}
