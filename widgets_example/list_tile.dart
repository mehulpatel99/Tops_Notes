import 'package:flutter/material.dart';

class mytile extends StatelessWidget {
  const mytile({super.key});

  @override
  Widget build(BuildContext context) {
    var image = ['eagle.png', 'Flutter.png', 'khushi.jpg', 'mehul.jpg'];
    var tit = ['mehul07', 'sunil07', 'vishal07', 'mehul'];
    var desc = ['eagle', 'Flutter', 'khushi', 'mehuu'];
    return Scaffold(
      appBar: AppBar(
        title: Text('list Tile'),
      ),
      body: Container(
        // child: Column(
        //   children: [
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              // leading: Text(name[index]),
              // leading: Image.asset('Assets/image/${name[index]}'),
              leading: Container(
                // height: 100,
                // width: 100,
               
                  child: CircleAvatar(
                      backgroundImage: AssetImage('Assets/image/${image[index]}'),
                      
                ),
              ),
              title: Text(
                tit[index],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                desc[index],
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.edit),
            );
          },
          itemCount: image.length,
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
              height: 100,
            );
          },
        ),
        //   ],
        // ),
      ),
    );
  }
}
