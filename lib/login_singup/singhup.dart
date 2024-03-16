import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class mysingup extends StatefulWidget {
  const mysingup({super.key});

  @override
  State<mysingup> createState() => _mysingupState();
}

  TextEditingController namecon = TextEditingController();
  TextEditingController emailcon = TextEditingController();
  TextEditingController passcon = TextEditingController();

  Future<void> mysinup(String? name,email,pass)async{
    UserCredential usercredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: pass);

    User? user = usercredential.user;
    await FirebaseFirestore.instance.collection('student').doc(user!.uid).set({
      'Name':name,
      'Email':email,
      'password':pass
    });
  }
class _mysingupState extends State<mysingup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
          controller: namecon,
          decoration: InputDecoration(hintText: 'Name'),
        ),
        TextField(
          controller: emailcon,
          decoration: InputDecoration(hintText: 'Email'),
        ),
        TextField(
          controller: passcon,
          decoration: InputDecoration(hintText: 'Password'),
        ),
        ElevatedButton(onPressed: (){
          mysinup(namecon.text, emailcon.text, passcon.text);
        }, child: Text('Singup'))
      ],),
    );
  }
}