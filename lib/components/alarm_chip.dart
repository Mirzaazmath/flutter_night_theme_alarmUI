import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/text_utils.dart';
class AlarmChip extends StatelessWidget {
 final  String time;
  const AlarmChip({super.key,required this.time});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: const  Color(0xff8c599e).withOpacity(0.2)
        ),
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            colors: [
              Color(0xff2f0433),
              Color(0xff210424),

            ]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWhite(text: time,size: 23,),
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
          ),
          Container(
            height: 20,
            width: double.infinity,
            decoration:const  BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                color: Color(0xff2f0b34)

            ),
            padding:const  EdgeInsets.symmetric(horizontal: 15),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColoredText(text: "Sat,Sun",size: 12,isbold: false,),
                const  Icon(Icons.more_horiz,color:   Color(0xff8c599e),)
              ],
            ),
          )
        ],

      ),
    );
  }
}
