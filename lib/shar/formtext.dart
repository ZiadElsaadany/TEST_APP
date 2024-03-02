



 import 'package:flutter/material.dart';









class FromText2 extends StatelessWidget {
  final TextInputType TextInputTypeee;
  final bool ispassword;


  final dynamic controllerr;
  final dynamic validator;
  final dynamic prefixIconn;
  final dynamic autovalidateMode;
   var onChangedd ;

  FromText2( {
    Key? key,
    required this.TextInputTypeee,
    required this.ispassword,
       this.controllerr,this.validator,this.autovalidateMode
    ,this.onChangedd,  required this.prefixIconn


  } ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        autovalidateMode:autovalidateMode ,
        onChanged: onChangedd,
        //  mount char maxLength:3,


        validator: validator,
        controller:controllerr,

        keyboardType: TextInputTypeee,
        obscureText:ispassword,
        decoration: InputDecoration(




            prefixIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(prefixIconn,style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 25,fontWeight: FontWeight.bold)),
              ],
            ) ,


            // to delete bordwes
            enabledBorder:  UnderlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.solid, color: Colors.black26),

                borderRadius: BorderRadius.circular(0)
            ),
             focusedBorder:   UnderlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
             fillColor: Colors.white54,
            filled: true),
      );
  }
}