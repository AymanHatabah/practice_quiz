

import 'package:flutter/material.dart';
import 'package:practice/Home.dart';
import 'package:practice/slide_A.dart';
import 'package:practice/slide_B.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute:SeTest.routename,routes: {
      Home.routename:(context) => Home(),
      FiTest.routename:(context) => FiTest(),
      SeTest.routename:(context) => SeTest(),


    },
    );
  }
}
