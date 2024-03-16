import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}
TextEditingController emailcon = TextEditingController();
Future<void> myforgot(String? email)async{
  await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
  Get.snackbar('Email', 'Please check your email');
}

class _ForgotPassState extends State<ForgotPass> {
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
        ElevatedButton(onPressed: (){}, child: Text('Send'))
      ],),
    );
  }
}