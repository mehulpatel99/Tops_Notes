import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class LoginFetch extends StatefulWidget {
  User? user;
  LoginFetch({super.key,required this.user});

  @override
  State<LoginFetch> createState() => _LoginFetchState();
}

class _LoginFetchState extends State<LoginFetch> {
void myget()async{
  var data =await FirebaseFirestore.instance.collection('practise').doc(widget.user!.uid).get();
  setState(() {
    name = data["Name"];
    email = data['Email'];
    mobile = data['Mobile'];
  });
}





  String? name;
  String? email;
  String? mobile;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   myget();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('$name'),
        Text('$email'),
        Text('$mobile'),
      ],),
    );
  }
}