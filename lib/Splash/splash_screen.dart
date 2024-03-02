import 'dart:async';

import 'package:app2/lag/hom1.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5), //milliseconds: 3000
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen1())),
    );
    Timer(const Duration(milliseconds: 10), (() {
      setState(() {});
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(children: [
         Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              stops: [0.0, 0.9],
              tileMode: TileMode.clamp,
              colors: [
               // Color.fromARGB(255, 3, 105, 202),  9971B0

                Colors.deepPurpleAccent,
                Colors.deepPurpleAccent,
              ],
            ),
          ),),
          Center(
            child: Container(
              height: 90,
              width: 95,
            
            
              decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(image: AssetImage("assets/img.jpg",),),

            
            
              ),
            
            
            
             ),
          ),
        ],
      ),
    );
  }
}
