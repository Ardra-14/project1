import 'package:flutter/material.dart';
import 'package:sample_project/screen_1.dart';
import 'package:sample_project/screen_first.dart';
import 'package:sample_project/screen_second.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme : ThemeData(
      primaryColor : const Color.fromARGB(255, 5, 5, 5),
      ),
      // home: ScreenOne(),
      home: ScreenFirst(),
    );
  }
}


