
import 'package:app2/Screens/add.dart';
import 'package:app2/ScreensE2/addE.dart';
 import 'package:cloud_firestore/cloud_firestore.dart';
 import 'package:flutter/material.dart';
 import 'package:path/path.dart' show basename;


class Solution extends StatefulWidget {


  Solution({super.key,});
  @override
  State<Solution> createState() => _SolutionState();
}

class _SolutionState extends State<Solution> {











  @override
  Widget build(BuildContext context) {
    return   Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(


        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title:Text("الحلول",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
          actions: [
            TextButton(onPressed: ( ){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddAddScreen(NameCollection: "dataSSS"),

                ),

              );


            }, child:  Text("اضافه حل ",style: TextStyle(fontSize: 18,color: Colors.white),))
          ],



        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5),
          child:StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('dataSSS').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState ==
                  ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black54,
                    ));
              }

              return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: ListView(
                  children: snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                    return
                       Column(
                         children: [
                           Row(
                             children: [
                               Text("الاسم : ",style: TextStyle(fontSize:20,color: Colors.indigo[400],fontWeight: FontWeight.bold)),
                               Text("${data["Title"]}",style: TextStyle(fontSize:20)),
                             ],
                           ),


                           Row(
                             children: [
                               Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height:200,
                                     width: 100,
                                     color: Colors.grey[200],
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: [
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Text("الحل المقترح : ",style: TextStyle(fontSize:20,color: Colors.indigo[400],fontWeight: FontWeight.bold)),
                                             ],
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                               Text("${data["deeee"]} ",style: TextStyle(fontSize:20,color: Colors.black54,fontWeight: FontWeight.bold)),

                                             ],
                                           )
                                         ],
                                       ),
                                     ),

                                   ),
                                 ),
                               )



                             ],
                           ),
                         ],
                       );
                  }).toList(),
                ),
              );
            },
          )
        ),
      ),
    );
  }
}
