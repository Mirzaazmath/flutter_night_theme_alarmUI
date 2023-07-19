import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/alarm_chip.dart';
import '../utils/text_utils.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h*0.65,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
                border: Border.all(
                  color: const  Color(0xff8c599e).withOpacity(0.2)
                ),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff9b17a8),
                    Color(0xff23003c),

                  ]
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff23003d),
                    offset: Offset(5,5),
                    blurRadius: 20
                  )
                ]
              ),
              child: SafeArea(

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextWhite(text: "Alarm",),
                      Center(
                        child: AspectRatio(
                          aspectRatio: 1.7,
                            child: Image.asset("assets/moon.png")),
                      ),

                      ColoredText(text: "Sleep time"),
                     const  SizedBox(height: 10,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             TextWhite(text: "05 ",size: 40,),
                             TextWhite(text: "hr",size: 16,),
                           ],
                         ),
                         const SizedBox(width: 10,),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             TextWhite(text: "30 ",size: 40,),
                             TextWhite(text: "min",size: 16,),
                           ],
                         ),



                       ],
                     ),
                     const  Divider(color: Color(0xff8c599e),thickness: 2,),
                    const   SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         const CircleAvatar(
                            backgroundColor: Color(0xff610d6e),
                            child: Icon(Icons.star,color: Color(0xfff12bf2),),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWhite(text: "62%",size: 20,isbold: false,),
                              const SizedBox(height: 5,),
                              ColoredText(text: "Of your goal",size: 12,isbold: false,),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWhite(text: "Sleep goal",size: 18,isbold: false,),
                              const SizedBox(height: 5,),
                              ColoredText(text: "This is set under\n your sleep goal",size: 12,isbold: false,),

                            ],
                          )

                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWhite(text: "Alarm",size: 18,isbold: false,),
                const   SizedBox(height: 20,),
                 const  AlarmChip(time: '18.45',),
                  const   SizedBox(height: 20,),
                  const AlarmChip(time: "09.30",),

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}

