// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirebaseapp/getdata.dart';
import 'package:myfirebaseapp/login_singup/getsignin_screen.dart';
class mysingin extends StatefulWidget {
  const mysingin({super.key});

  @override
  State<mysingin> createState() => _mysinginState();
}
  TextEditingController emailcon = TextEditingController();
  TextEditingController passcon = TextEditingController();
  
  Future<void> sinin(String? Email,Password, BuildContext context)async{
    try{
   UserCredential usercredential=  await FirebaseAuth.instance.signInWithEmailAndPassword(email: Email!, password: Password);
     User? user= usercredential.user;
    Navigator.push(context,MaterialPageRoute(builder: (context)=>SigninGet(user:user,)));
    }catch(e){
      print(e.toString());
      Get.snackbar('Invalid', '$e',duration: Duration(seconds: 5));
    }
    
  }
class _mysinginState extends State<mysingin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
          controller: emailcon,
          decoration: InputDecoration(hintText: 'Email'),
        ),
        TextField(
          controller: passcon,
          decoration: InputDecoration(hintText: 'Password'),
        ),
        ElevatedButton(onPressed: (){
          sinin(emailcon.text, passcon.text, context);
        }, child: Text('Login'))
      ],),
    );
  }
}