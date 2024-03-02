import 'package:app2/Screens/Solution.dart';
import 'package:app2/ScreensE2/SolutionE.dart';
 import 'package:app2/Screens/screen1.dart';
import 'package:app2/Screens/screen2.dart';
import 'package:app2/Screens/screen3.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الرئيسيه",style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child:
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen1(),
                    
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

                            child: Text("مفهوم الاحتباس الحراري",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)))),
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
                            builder: (context) => Screen2(),
                    
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

                            child: Text(" اثار الاحتباس الحراري",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)))),
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
                            builder: (context) => Screen3(),
                    
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

                            child: Text("شارك بتصوير الاماكن الظاهر بها الاحتباس الحراري",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)))),
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
                            builder: (context) => Solution()
                    
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

                            child: Text("شارك لكوكب افضل(أٌقترح حل )",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)))),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          )


          ),




      ),
    );
  }
}
