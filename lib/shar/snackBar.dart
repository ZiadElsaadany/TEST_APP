


 import 'package:flutter/material.dart';




 showSnackBar2 (BuildContext context,String text) {
   return
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
       duration: const Duration(seconds: 2),backgroundColor: Colors.green,
       content:   Text( text,style: const TextStyle(color: Colors.white)),
       action: SnackBarAction(
         label: 'Close',
         onPressed: () {
           // Some code to undo the change.
         },
       ),
     ));



   ;}