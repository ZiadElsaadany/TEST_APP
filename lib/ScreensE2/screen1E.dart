import 'package:flutter/material.dart';






class Screen1E extends StatelessWidget {
  const Screen1E({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Definition"),
      ),
      body: SafeArea(

        child:SingleChildScrollView(
          child: Container(
            width: double.infinity,
           // color: Colors.pink,

            child: const Padding(
              padding: EdgeInsets.only(top: 20.0,right: 10,left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                      "The concept of global warming and how it happens?"
                         , style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),


                  ),
                  SizedBox(height: 10,),
                  Text(
                 "  He defined the phenomenon of global warming, or the phenomenon of global warming (in English: Global Warming) or the greenhouse effect (in English: Greenhouse), as an increase in the average temperature of the atmospheric air present in the lower layer of the Earth’s surface, during the past century or two. He spoke This phenomenon is when the sun's heat is trapped or retained in the Earth's atmosphere after it enters it, which raises the Earth's temperature and makes it warmer. This is done by atmospheric gases such as carbon dioxide absorbing the sun's energy and trapping it near the Earth, which contributes to the rise in the Earth's temperature. Comparing a set of data related to various weather phenomena, such as temperature and rainfall rates, with the changes occurring in the climate, such as the chemical composition of the atmosphere and sea currents, it was found that these climate changes occur every certain period of time since the beginning of the geological era naturally, but during the industrial revolution the changes increased. climate change due to human activities. During the past century, the average global surface temperature rose from (0.3 to 0.6) degrees Celsius, which represents the largest increase in the Earth’s surface temperature during the past thousand years, and a greater increase in temperatures is expected during this century, as The average global temperature is currently 15 degrees Celsius, and weather scientists expect it to increase by 2-4 degrees Celsius by the year 2100. An increase in the average global temperature does not necessarily mean that all regions of the world will become warmer. Global warming does not indicate an increase in temperature. The temperature is the same everywhere, but it indicates a general rise in the average global temperature. What is worth noting is that global warming provides a description of the increase in global temperatures only, although there are studies that show that the effect of global warming goes beyond a mere increase in temperatures, as it has a major impact on the occurrence of climate changes in all parts of the world, and on weather patterns. Globally, which affects weather elements such as rainfall rates. "

                    , style: TextStyle(fontSize: 18),


                  ),


                ],
              ),
            ),

          ),
        ) ,
      ),
    );
  }
}
