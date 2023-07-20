import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../components/alarm_chip.dart';
import '../utils/text_utils.dart';
class SetAlarmScreen extends StatelessWidget {
  const SetAlarmScreen({super.key});

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
                      const  Spacer(),
                      TextWhite(text: "Sleep Time",),
                      const  Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffe12ede).withOpacity(0.4),
                              offset:const Offset(15,15),
                              blurRadius: 30
                            ),
                            BoxShadow(
                                color:  const Color(0xffe12ede).withOpacity(0.4),
                                offset:const  Offset(-15,-15),
                                blurRadius: 30
                            )
                          ]
                        ),
                        child: SleekCircularSlider(
                          min: 0,
                            max: 12,
                            initialValue: 5,


                            appearance: CircularSliderAppearance(
                                size: 200,
                                customColors: CustomSliderColors(
                                  progressBarColor:const Color(0xffe12ede),
                                    trackColor: const Color(0xff530a64),

                                ),
                                customWidths: CustomSliderWidths(
                                  trackWidth: 20,
                                  progressBarWidth: 20,
                                  handlerSize: 10,
                                )
                            ),
                            innerWidget: innerWidget,
                            onChange: (double value) {
                              print(value.round());
                            }),
                      ),

                      const  Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xff610d6e),
                            child: Icon(Icons.dark_mode,color: Color(0xfff12bf2),size: 10,),
                          ),
                          ColoredText(text: "Under your sleep goal(8hr)",size: 11,),
                        ],
                      ),
                      const  Spacer(),




                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Column(
                                  children: [
                                   const  SizedBox(height: 10,),
                                    Container(
                                      width: double.infinity,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,

                                            colors: [
                                              Color(0xfff00bd9),
                                              Color(0xff790a6b),

                                            ]
                                        ),

                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const  SizedBox(height: 10,),
                                          TextWhite(text: "Bedtime",isbold: false,size: 10,),
                                          TextWhite(text: "12.00",)


                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,

                                    gradient:  LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomCenter,

                                        colors: [
                                         Colors.grey,
                                          Colors.white

                                        ]
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                         const  SizedBox(width: 30,),
                          Expanded(
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Column(
                                  children: [
                                   const  SizedBox(height: 10,),
                                    Container(
                                      width: double.infinity,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:const  Color(0xff220041),
                                        border: Border.all(
                                            color: const  Color(0xff8c599e).withOpacity(0.2)
                                        ),

                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                         const  SizedBox(height: 10,),
                                          ColoredText(text: "Wake up",size: 10,),
                                          TextWhite(text: "05.30",)

                                          
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,

                                    gradient:  LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomCenter,

                                        colors: [
                                          Color(0xfff5c22e),
                                          Color(0xffdc771f),

                                        ]
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )




                        ],
                      ),
                      const  Spacer(),

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWhite(text: "Set alarm",size: 18,isbold: false,),
                      Transform.scale(
                        scale: 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.7),
                                  offset:const  Offset(5.0,5.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color:Colors.grey.shade800.withOpacity(0.5),
                                  offset:const  Offset(-3.0,-3.0),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ]

                          ),
                          child: CupertinoSwitch(
                              activeColor: const Color(0xffcb12ab),

                              value: true,
                              onChanged: (value){


                              }),
                        ),
                      ),
                    ],
                  ),
                  const  SizedBox(height: 10,),
                 const  Divider(
                  color: Color(0xffeba0e9),
                  ),
                  const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWhite(text: "Alarm sound",size: 18,isbold: false,),
                     ColoredText(text: "Melodian",size: 12,

                     )
                    ],
                  ),
                Container(


                  decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xffe12ede).withOpacity(0.4),
                            offset:const Offset(2,2),
                            blurRadius: 20
                        ),
                        BoxShadow(
                            color:  const Color(0xffe12ede).withOpacity(0.4),
                            offset:const  Offset(-2,-2),
                            blurRadius: 20
                        )
                      ]
                  ),

                  child: Slider(
                      activeColor:const Color(0xffe12ede),
                      inactiveColor: const Color(0xff530a64),
                     thumbColor: Colors.white,

                     value: 0.5, onChanged: (val){

               }),
                ),

                  const  SizedBox(height: 10,),
                  const  Divider(
                    color: Color(0xffeba0e9),
                  ),
                 const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWhite(text: "Snoze",size: 18,),
                      Transform.scale(
                        scale: 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.7),
                                  offset:const  Offset(5.0,5.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color:Colors.grey.shade800.withOpacity(0.5),
                                  offset:const  Offset(-3.0,-3.0),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ]

                          ),
                          child: CupertinoSwitch(
                              activeColor: const Color(0xffcb12ab),

                              value: false,
                              onChanged: (value){


                              }),
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}

Widget innerWidget(double value){

  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      alignment: Alignment.center,
      height: 150,
      width: 150,
      decoration:const  BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white


      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ColoredText(text: "${value.round()}",size: 50,color:const  Color(0xff500862),),
              ColoredText(text: "hr",size: 20,color:const  Color(0xff500862),),

            ],
          ),

          ColoredText(text: "30min",),
        ],
      ),

    ),
  );
}

