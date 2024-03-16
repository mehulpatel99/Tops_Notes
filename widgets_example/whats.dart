import 'package:flutter/material.dart';

class whts extends StatelessWidget {
  const whts({super.key});

  @override
  Widget build(BuildContext context) {
    var T = [
      'mehul_07',
      'sunil_26',
      'prisu_26',
      'vishal',
      'dale steyn',
      'kalpesh',
      'nikhil'
    ];
    var D = ['mehul desc', 'sunil desc', 'prisu desc', 'desc', 'desc', 'desc','desc'];
    var image = [
      'eagle.png',
      'Flutter.png',
      'mehul2.jpg',
      'khushi.jpg',
      'mehul.jpg',
      'pizza.jpg',
      'rashmika.jpg'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('WhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.line_weight_sharp))
        ],
      ),
      body: Center(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        // radius: 100,
                        backgroundImage:
                            AssetImage('Assets/image/${image[index]}'),
                      ),

                      // child: Image.asset('Assets/image/${image[index]}',fit: BoxFit.cover,),

                      title: Text(
                        T[index],
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        D[index],
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.add_box)));
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    height: 50,
                  );
                },
                itemCount: image.length)),
      ),
    );
  }
}
