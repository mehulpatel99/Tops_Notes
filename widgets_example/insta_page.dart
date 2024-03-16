import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class con extends StatelessWidget {
  final Color? bgcolor;
  

  con({
    this.bgcolor = Colors.orange,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(children: [
        SizedBox(
          height: 80,
          width: 80,
          child: CircleAvatar(
            backgroundImage: AssetImage('Assets/image/mehul.jpg'),
            // backgroundColor: bgcolor,
          ),
        ),
        Text(
          'Mehul_26',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ]),
    );
  }
}

class bar extends StatelessWidget {
  final Image? agimage;

  bar({
    required this.agimage,
  });
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
    );
  }
}

class insta extends StatelessWidget {
  const insta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_rounded,
          color: Colors.black,
        ),
        title: Text(
          'Instagram',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),

        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ],
        elevation: 0,
        // shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                  SizedBox(
                    width: 10,
                  ),
                  con(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 440,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(width: 3), color: Colors.grey[300]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('Assets/image/mehul.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Mehul_patidar',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        SizedBox(
                          width: 230,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.list_rounded,
                              size: 40,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 320,
                      width: 500,
                      child: Image.asset(
                        'Assets/image/pizza.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        FaIcon(
                          Icons.favorite,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaIcon(
                          Icons.comment,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaIcon(
                          Icons.telegram,
                          size: 40,
                        ),
                        SizedBox(
                          width: 280,
                        ),
                        FaIcon(
                          Icons.save_alt_rounded,
                          size: 40,
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(width: 3), color: Colors.grey[300]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('Assets/image/rashmika.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Rashmika_mandana',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Icon(
                          Icons.verified_sharp,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.list_rounded,
                              size: 40,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 290,
                      width: 500,
                      child: Image.asset(
                        'Assets/image/rashmika.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              size: 40,
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.comment_outlined,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.telegram,
                              size: 40,
                            )),
                        SizedBox(
                          width: 280,
                        ),
                        FaIcon(
                          Icons.save_alt_rounded,
                          size: 40,
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 570,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(width: 3), color: Colors.grey[300]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('Assets/image/mehul2.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Mehul_07',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Icon(
                          Icons.verified_sharp,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 270,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.list_rounded,
                              size: 40,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 450,
                      width: 500,
                      child: Image.asset(
                        'Assets/image/khushi.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        FaIcon(
                          Icons.heart_broken,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaIcon(
                          Icons.comment,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaIcon(
                          Icons.double_arrow_outlined,
                          size: 40,
                        ),
                        SizedBox(
                          width: 280,
                        ),
                        FaIcon(
                          Icons.save_alt_rounded,
                          size: 40,
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
