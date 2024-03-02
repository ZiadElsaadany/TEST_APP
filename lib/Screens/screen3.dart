import 'package:app2/firebase/firestorrr.dart';
import 'package:app2/shar/snackBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:math';

import 'package:path/path.dart' show basename;

import '../ScreensE2/SolutionE.dart';






class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {



  Uint8List? imgPath;
  String? imgName;

  bool isLoading = false;

  uploadImage2Screen(ImageSource source) async {
    Navigator.pop(context);
    final XFile? pickedImg = await ImagePicker().pickImage(source: source);
    try {
      if (pickedImg != null) {
        imgPath = await pickedImg.readAsBytes();
        setState(() {
          imgName = basename(pickedImg.path);
          int random = Random().nextInt(9999999);
          imgName = "$random$imgName";
          print(imgName);
        });
      } else {
        print("NO img selected");
      }
    } catch (e) {
      print("Error => $e");
    }
  }

  showmodel() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              onPressed: () async {
                // Navigator.of(context).pop();
                await uploadImage2Screen(ImageSource.camera);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Camera",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () async {
                // Navigator.of(context).pop();
                await uploadImage2Screen(ImageSource.gallery);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Gallary",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }






  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("شارك بأضافه اماكن بها احتباس حراري"),
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
          
              GestureDetector(
              onTap: () {
          
                showmodel();
          
                },
            child:imgPath == null
                ? Container(
              width:double.infinity,
              height:200,
          
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),border: Border.all(
                  color: Colors.blue
          
              ),
          
                  color: Colors.white54
          
              ) ,child: const Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.photo,size: 40,color: Colors.blue,),
                    Text("اضافه صوره",style: TextStyle(fontSize: 25),)
          
                  ]),
            ),
          
            ):Container(
                width:double.infinity,
                height:200,
          
                decoration:  BoxDecoration(
                    image: DecorationImage(
                        image: MemoryImage(imgPath!), fit: BoxFit.cover
                      //
                      //
                    ))
            )
                ),
              SizedBox(height: 10,),
          
              ElevatedButton(
                  onPressed: () async {
          
          
                    if (imgPath !=null) {
                      FirestoreMethods().addimgs(  imgName: imgName, imgPath: imgPath, NameCollection: "imgSSS",  );
          
          
                      if (!mounted) return;
                      showSnackBar2 ( context, "It has been added");
          
          
          
          
          
                    } else {
                      showSnackBar2(context, 'اختار صوره');
                    }
          
          
          
          
          
                  },
                  child: const Text(
                    'اضافه ',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Colors.deepPurpleAccent),
                      padding:
                      const MaterialStatePropertyAll(EdgeInsets.all(12)),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))))),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  children: [
                    Text("صور : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo),)
                  ],
                ),
              ),
          
          
          
          
          
          
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('imgSSS').snapshots(),
                builder:
                    (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
          
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ));
                  }
          
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 440,
                      width: double.infinity,
                      child: GridView.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,padding: EdgeInsets.all(10),
                        children: snapshot.data!.docs.map((DocumentSnapshot document) {
                          Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                          return
                            GestureDetector(
                              onTap: () {
          
                              },
                              child:
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    NetworkImage("${data["imgCar"]}")
                                        ,fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              ),
          
                            );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )

      ),
    );
  }
}
