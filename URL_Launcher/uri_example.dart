import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUri2 extends StatefulWidget {
  const MyUri2({super.key});

  @override
  State<MyUri2> createState() => _MyUri2State();
}
TextEditingController uricon = TextEditingController();

  Future<void> uricall(String? myuri)async{
    Uri uri = Uri.parse(myuri!);
    if(await canLaunchUrl(uri)){
      await launchUrl(uri);
    }
  }
  
class _MyUri2State extends State<MyUri2> {
  @override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
          controller: uricon,
          decoration: InputDecoration(hintText: 'Enter your uri'),
        ),
        ElevatedButton(onPressed: (){
          uricall(uricon.text.toString());
          // uricall(number);
        }, child: Text('Open'))
      ],),
    );
  }
}