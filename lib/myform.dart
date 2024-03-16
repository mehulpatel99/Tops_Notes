import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

 TextEditingController namecon =TextEditingController();
  TextEditingController lastnamecon =TextEditingController();
   TextEditingController contactcon =TextEditingController();
class _MyFormState extends State<MyForm> {
 CollectionReference student = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Firebase'),backgroundColor: Colors.blue,),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 400,
          width: 400,
          decoration: BoxDecoration( gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey,blurRadius: 20.0 ,offset: Offset(20, 20)),
          ],

              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecon,
                decoration: InputDecoration(filled: true,fillColor: Colors.white,hintText: 'Name',prefixIcon: Icon(Icons.person),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: lastnamecon,
                  decoration: InputDecoration(filled: true,fillColor: Colors.white,hintText: 'LastName',prefixIcon: Icon(Icons.text_rotate_vertical_sharp),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: contactcon,
                  decoration: InputDecoration(filled: true,fillColor: Colors.white,hintText: 'Contact',prefixIcon: Icon(Icons.contact_page_outlined),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [
                      Colors.deepPurple.shade400,
                      Colors.deepPurple.shade200,
                    ],
                  ),
                ),
                child: TextButton(onPressed: (){
     student.add({
      'Firstname':namecon.text.toString(),
      'Lastname':lastnamecon.text.toString(),
      'Contact':contactcon.text.toString(),
     }
     );
     print('succesfully add');
                },child: Text('Click Here',style: TextStyle(color: Colors.white),)),
              )
          ],),
        ),
      ),
    );
  }
}
