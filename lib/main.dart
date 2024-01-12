import 'package:edify/pages/Home.dart';
import 'package:edify/pages/area.dart';
import 'package:edify/pages/loginpage.dart';
import 'package:edify/pages/mainpage.dart';
import 'package:edify/pages/maps.dart';
import 'package:edify/pages/page_control.dart';
import 'package:edify/pages/scholarship.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          )),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
