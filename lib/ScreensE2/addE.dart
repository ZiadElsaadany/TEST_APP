
 import 'package:app2/ScreensE2/SolutionE.dart';
import 'package:app2/firebase/firestorrr.dart';
 import 'package:app2/shar/formtext.dart';
import 'package:app2/shar/snackBar.dart';
 import 'package:flutter/material.dart';
 import 'package:path/path.dart' show basename;

 import 'dart:math';


 import 'package:flutter/foundation.dart';
  import 'package:image_picker/image_picker.dart';


class AddAddScreenE extends StatefulWidget {

  var NameCollection;
  AddAddScreenE({super.key, required this.NameCollection});
  @override
  State<AddAddScreenE> createState() => _AddAddScreenEState();
}

class _AddAddScreenEState extends State<AddAddScreenE> {
  final formKey = GlobalKey<FormState>();












  final titleControllerr = TextEditingController();
  final priceControllerr = TextEditingController();
  final locationControllerr = TextEditingController();
  final describeControllerr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(


      appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
        title:Text(" Add a Solution",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),



      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5),
        child: SingleChildScrollView(
          child:
          Form(
            key: formKey,
            child: Column(children: [




              const SizedBox(height: 20,),

              FromText2(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;},
                ispassword: false,
                TextInputTypeee: TextInputType.emailAddress,


                controllerr: titleControllerr,
                prefixIconn: "name : ",
              ),
              const SizedBox(height: 10,),



              FromText2(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;},
                ispassword: false,
                TextInputTypeee: TextInputType.emailAddress,
                controllerr: describeControllerr, prefixIconn: "Solution : ",
              ),
              const SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () async {


                      if (formKey.currentState!.validate()) {
                        FirestoreMethods().MyAdds(titleControllerr: titleControllerr.text, describeControllerr: describeControllerr.text, NameCollection: "dataSSS",  );


                        if (!mounted) return;

 
                        showSnackBar2 ( context, "It has been added");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SolutionE(),

                          ),

                        );


                      } else {
                        showSnackBar2(context, 'Error');
                      }





                    },
                    child: const Text(
                      'add ',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(Colors.deepPurpleAccent),
                        padding:
                        const MaterialStatePropertyAll(EdgeInsets.all(12)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))))),
              ),



            ]),
          ),
        ),
      ),
    );
  }
}
