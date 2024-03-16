

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseapp/practise/login_fetch.dart';

class LoginPractise extends StatefulWidget {
  const LoginPractise({super.key});

  @override
  State<LoginPractise> createState() => _LoginPractiseState();
}
TextEditingController emaillog =TextEditingController();
TextEditingController passlog = TextEditingController();


   void login(String? email,pass,BuildContext context)async{
    try{
      UserCredential usercredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.toString(), password: pass);
      User? user = usercredential.user;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginFetch(user: user)));
    }catch(e){
      print(e);
    }
   }
class _LoginPractiseState extends State<LoginPractise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
            controller: emaillog,
            decoration: InputDecoration(hintText: "Email"),
          ),
           TextField(
            controller: passlog,
            decoration: InputDecoration(hintText: "Password"),
          ),
          ElevatedButton(onPressed: (){
            login(emaillog.text.toString(), passlog.text.toString(), context);
          }, child: Text('Login'))
        ],),
      ),
    );
  }
}