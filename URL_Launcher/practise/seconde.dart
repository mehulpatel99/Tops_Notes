import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrl2 extends StatefulWidget {
  const MyUrl2({super.key});

  @override
  State<MyUrl2> createState() => _MyUrl2State();
}

TextEditingController mynumbercon = TextEditingController();

void mycall(String number)async{
  Uri launchuri2 = Uri(scheme: 'tel',path: number);
  await  launchUrl(launchuri2);
}

class _MyUrl2State extends State<MyUrl2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              controller: mynumbercon,
              decoration: InputDecoration(hintText: "Contact"),
            ),
            ElevatedButton(onPressed: (){
              mycall(mynumbercon.text);
            }, child: Text('Call'))
          ],),
    );
  }
}