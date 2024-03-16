import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myfirebaseapp/practise/get_practise.dart';
class PractiseEdit extends StatefulWidget {
  String? id;
   PractiseEdit({super.key,required this.id});

  @override
  State<PractiseEdit> createState() => _PractiseEditState();
}
 TextEditingController nameedit = TextEditingController();
 TextEditingController MobileEdit = TextEditingController();
class _PractiseEditState extends State<PractiseEdit> {
   void pracUpdate(String name,mobile)async{
    await FirebaseFirestore.instance.collection('practise').doc(widget.id).update({'Name':name,'Mobile':mobile});
    Get.to(PractiseGet());
  }

  void getedit()async{
    var data = await FirebaseFirestore.instance.collection('practise').doc(widget.id).get();
    setState(() {
      nameedit.text=data['Name'];
      MobileEdit.text=data['Mobile'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getedit();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: nameedit,
          decoration: InputDecoration(hintText: 'Name'),
        ),
         TextField(
          controller: MobileEdit,
          decoration: InputDecoration(hintText: 'Mobile'),
        ),
        ElevatedButton(onPressed: (){
          pracUpdate(nameedit.text.toString(), MobileEdit.text.toString());
        }, child: Text('Update'))
      ],),
    );
  }
}