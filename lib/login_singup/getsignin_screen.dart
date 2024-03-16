import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseapp/login_singup/singhup.dart';

class SigninGet extends StatefulWidget {
  User? user;
 SigninGet({super.key,required this.user});

  @override
  State<SigninGet> createState() => _SigninGetState();
}

TextEditingController name1 = TextEditingController();
TextEditingController email1 = TextEditingController();
class _SigninGetState extends State<SigninGet> {

 void updat()async{
    await FirebaseFirestore.instance.collection('student').doc(widget.user!.uid).update({
    'Name':name1.text.toString(),
  });
  Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninGet(user: widget.user)));
 }



  void mygetsc()async{
  var data =  await FirebaseFirestore.instance.collection('student').doc(widget.user!.uid).get();
 
  setState(() {
    name1.text = data['Name'];
    email1.text = data['Email'];
  });
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mygetsc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      actions: [PopupMenuButton(
        icon: Icon(Icons.more_vert),
        color: Colors.black26,
        onSelected: (value) {
          if(value=='Update'){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>mysingup()));
          }
        },
        itemBuilder: (context) {
          return [
        PopupMenuItem(child: Text('Update'),value: 'Update',)];
      },)],
    ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: name1,
          decoration: InputDecoration(hintText: 'Name',),
        ),
        TextField(
          readOnly: true,
          controller: email1,
          decoration: InputDecoration(hintText: 'Email'),
        ),
        ElevatedButton(onPressed: (){
          updat();
        }, child: Text('update'))
      ],
    ),
    );
  }
}