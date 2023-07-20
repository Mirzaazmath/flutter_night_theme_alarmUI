import 'package:flutter/material.dart';

/// white text
class TextWhite extends StatelessWidget {
  final String text;
  final double? size;
  final bool? isbold;

   TextWhite({super.key,this.size,required this.text,this.isbold});

  @override
  Widget build(BuildContext context) {
    return   Text(text,style: TextStyle(color: Colors.white,fontWeight:isbold==null? FontWeight.w700:FontWeight.normal, fontSize:size?? 24,shadows: const[
      BoxShadow(
          color: Colors.white,
          offset: Offset(1, 1),
          blurRadius:1
      ),

    ]),);
  }
}

/// color text

class ColoredText extends StatelessWidget {
  final String text;
  final double? size;
  final bool? isbold;
  final Color?color;
   ColoredText({super.key,this.size,required this.text,this.isbold,this.color});

  @override
  Widget build(BuildContext context) {
    return   Text(text,style: TextStyle(color:color??const  Color(0xff8c599e),fontWeight:isbold==null? FontWeight.bold:FontWeight.normal, fontSize:size?? 17),maxLines: 2,);
  }
}
