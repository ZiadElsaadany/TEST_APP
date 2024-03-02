import 'package:app2/Screens/screen1.dart';
import 'package:app2/Screens/screen2.dart';
import 'package:app2/Screens/screen3.dart';
import 'package:app2/ScreensE2/SolutionE.dart';
import 'package:app2/ScreensE2/screen1E.dart';
import 'package:app2/ScreensE2/screen2E.dart';
import 'package:app2/ScreensE2/screen3E.dart';
import 'package:flutter/material.dart';

class HomeScreenE2 extends StatelessWidget {
  const HomeScreenE2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(

        child:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen1E(),

                        ),

                      );

                    },
                    child: Container(

                      width: double.infinity,

                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("assets/homeimg/img101.jpeg"),fit: BoxFit.cover)

                      ),
                      child: Center(child: Container(
                          color: Colors.black.withOpacity(.5),

                          child: Text("Definition of global warming",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)))),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2E(),

                        ),

                      );


                    },
                    child: Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("assets/homeimg/img102.jpeg"),fit: BoxFit.cover)
                      ),
                      child: Center(child: Container(
                          color: Colors.black.withOpacity(.3),

                          child: Text("Effects of global warming",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)))),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen3E(),

                        ),

                      );



                    },
                    child: Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("assets/homeimg/img103.jpeg"),fit: BoxFit.cover)

                      ),
                      child: Center(child: Container(
                          color: Colors.black.withOpacity(.5),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Participate in photographing places where global warming appears",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                          ))),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SolutionE()

                        ),

                      );



                    },
                    child: Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("assets/homeimg/images104.jpeg"),fit: BoxFit.cover)

                      ),
                      child: Center(child: Container(
                          color: Colors.black.withOpacity(.5),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Share for a better planet (suggest a solution)",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                          ))),
                    ),
                  ),
                ),


              ],
            ),
          ),
        )


        ),




    );
  }
}
