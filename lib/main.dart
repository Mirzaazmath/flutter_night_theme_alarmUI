import 'package:flutter/material.dart';
import 'package:nighttheme_alarm_ui/screens/home_screen.dart';
import 'package:nighttheme_alarm_ui/screens/setalarm_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xff1b0220)
      ),
      home: HomeScreen(),
    );
  }
}
