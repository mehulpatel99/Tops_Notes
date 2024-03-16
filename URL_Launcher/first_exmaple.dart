import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrl extends StatefulWidget {
  const MyUrl({super.key});

  @override
  State<MyUrl> createState() => _MyUrlState();
}
TextEditingController numbercon = TextEditingController();
TextEditingController URLcon = TextEditingController();


Future<void> makecall(String number)async{
  Uri launchUri = Uri(scheme: "tel",path: number);
  await launchUrl(launchUri);
}


Future<void> Urlcall(Uri url)async{
  if(await launchUrl(url )){
    throw Exception('Could not launch $url');
  }
}


String? number = '22222222';

class _MyUrlState extends State<MyUrl> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numbercon.text=number.toString();
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('URL Launcher')),
      body: Column(children: [
        TextField(
          controller: numbercon,
          decoration: InputDecoration(hintText: "Contact",prefixIcon: Icon(Icons.contact_mail)),
        ),
        TextField(
          controller: URLcon,
          decoration: InputDecoration(hintText: "URL",prefixIcon: Icon(Icons.contact_mail)),
        ),
        ElevatedButton(onPressed: (){
          // makecall(numbercon.text.toString());
          makecall(number.toString());

        }, child: Text('Call')),
        ElevatedButton(onPressed: (){
          setState(() {
            Urlcall(URLcon.text.toString() as Uri );
          });

        }, child: Text('URL')),
      ],),
    );
  }
}