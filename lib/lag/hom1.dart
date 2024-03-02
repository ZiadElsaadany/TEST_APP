import 'package:app2/Screens/MyHomePage.dart';
import 'package:app2/Screens/screen1.dart';
import 'package:app2/Screens/screen2.dart';
import 'package:app2/Screens/screen3.dart';
import 'package:app2/ScreensE2/MyHomePage2.dart';
import 'package:app2/ScreensE2/screen1E.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreenE2(),

                      ),

                    );

                  },
                  child: Container(
                    height: 60,
                    width: 200,

                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(child: Text("  English language",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold))),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),

                      ),

                    );


                  },
                  child: Container(
                    height: 60,
                    width: 200,

                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(child: Text("اللغه العربيه",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
                  ),
                ),



              ],
            ),
          )


      ),




    );
  }
}