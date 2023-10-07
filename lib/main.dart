import 'package:flutter/material.dart';
import 'package:movien/main_screens.dart';
import 'package:movien/screens/category/category_screens.dart';
import 'package:movien/screens/category/detail/datail_screens.dart';
import 'package:movien/screens/dev/dev_screens.dart';
import 'package:movien/screens/home/home_screens.dart';
import 'package:movien/screens/movies_type/movies/movies_screens.dart';
import 'package:movien/screens/movies_type/season/season_screens.dart';
import 'package:movien/screens/splash/splash_screens.dart';

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
      title: 'Movien',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home:  SeasonScreens(),
    );
  }
}