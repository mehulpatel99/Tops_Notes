import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class practise_add extends StatefulWidget {
  const practise_add({super.key});

  @override
  State<practise_add> createState() => _practise_addState();
}
TextEditingController emailp = TextEditingController();
TextEditingController passp = TextEditingController();
TextEditingController namep = TextEditingController();
TextEditingController mobilep = TextEditingController();


void myadd(String? email,pass,name,mobile)async{
  UserCredential usercredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.toString(), password: pass);
  User? user = usercredential.user;
  await FirebaseFirestore.instance.collection('practise').doc(user!.uid).set({'Name':name,'Email':email,'Pass':pass,'Mobile':mobile});
}
class _practise_addState extends State<practise_add> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
            controller: namep,
            decoration: InputDecoration(hintText: 'Name'),
          ),
          TextField(
            controller: mobilep,
            decoration: InputDecoration(hintText: 'Mobile'),
          ),
          TextField(
            controller: emailp,
            decoration: InputDecoration(hintText: 'Email'),
          ),
          TextField(
            controller: passp,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          ElevatedButton(onPressed: (){
            myadd(emailp.text.toString(), passp.text.toString(), namep.text.toString(), mobilep.text.toString());
            setState(() {
              emailp.clear();
              passp.clear();
              namep.clear();
              mobilep.clear();
            });
          }, child: Text('Add'))
        ],),
      ),
    );
  }
}