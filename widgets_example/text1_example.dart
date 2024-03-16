import 'package:flutter/material.dart';

class text1 extends StatelessWidget {
  const text1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.text_fields,
          color: Colors.black54,
        ),
        title: Text(
          "TEXT",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.whatshot_sharp)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_cell_rounded))
        ],
      ),
      body: Container(
        width: 700,
        height: 800,
        color: Colors.teal[200],
     child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
       children:[
        TextButton(onPressed: (){}, child: Icon(Icons.abc_rounded)),
      SizedBox(
        height: 20,
      ),
    // Text('this is button'),
     
      ElevatedButton(onPressed: (){}, child: 
      Text('click'),
      ),
       ],
      ),
    
      ),
    );
  }
}
