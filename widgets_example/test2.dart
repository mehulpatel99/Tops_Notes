import 'package:flutter/material.dart';

class test2 extends StatelessWidget {
  const test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.api_rounded),
        title: Text('App'),
      ),
      body: Container(
        color: Colors.teal[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(backgroundColor: Colors.transparent),
                  label: Text("enter name"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.tab_unselected_rounded),
                  hintText: 'password',
                  label: Text('enter password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Click!!'),
                  icon: Icon(Icons.ads_click_outlined),
                ),
                ElevatedButton(onPressed: () {}, child: Text('submit')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
