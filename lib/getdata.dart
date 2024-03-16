
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseapp/update.dart';

class MyGet extends StatefulWidget {
  const MyGet({super.key});

  @override
  State<MyGet> createState() => _MyGetState();
}
void delete(String id)async{
  FirebaseFirestore.instance.collection('Users').doc(id).delete();
}

class _MyGetState extends State<MyGet> {
  CollectionReference student = FirebaseFirestore.instance.collection('Users');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(stream: student.snapshots(), builder: (context, snapshot) {
        if(snapshot.hasData){
        var  document=snapshot.data!.docs;
          
         return ListView.builder(itemCount: document.length,itemBuilder: (context,index){
        
          return Card(child: 
          
          ListTile(
          title: Text('Name : ${document[index]['Firstname']} ${document[index]['Lastname']}}'),
            subtitle: Text('Contact : ${document[index]['Contact']}'),
            leading: IconButton(onPressed: (){
                 
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>myupdate(id: document[index].id)));


            }, icon: Icon(Icons.edit)),
            trailing: IconButton(onPressed: (){
                setState(() {
                  delete(document[index].id);
                });
            }, icon: Icon(Icons.delete)),

          )
          
          
          );
         });
        }else if(snapshot.hasError){
          print('error---------------------');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error')));
        }
        
        return CircularProgressIndicator();
      },),
    );
  }
}