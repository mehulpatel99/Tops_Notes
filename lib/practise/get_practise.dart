import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myfirebaseapp/practise/edit.dart';
  class PractiseGet extends StatefulWidget {
  const PractiseGet({super.key});

  @override
  State<PractiseGet> createState() => _PractiseGetState();
}

class _PractiseGetState extends State<PractiseGet> {
  CollectionReference pracget = FirebaseFirestore.instance.collection('practise');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: pracget.snapshots(), builder: (context,snapshot){
        if(snapshot.hasData){
          var data = snapshot.data!.docs;
          return ListView.builder(itemCount: data.length,itemBuilder: ((context, index) {
            return Card(child: Column(
              children: [
                Text(data[index]['Name']),
                Text(data[index]['Mobile']),
                ElevatedButton(onPressed: (){
                  Get.to(PractiseEdit(id: data[index].id));
                }, child: Text('Edit'))
                
              ],
            ),);
          }));
        }else if(snapshot.hasError){
          Text('Error');
        }return CircularProgressIndicator();
      }),
    );
  }
}