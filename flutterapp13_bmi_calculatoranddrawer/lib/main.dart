import 'package:flutter/material.dart';
import 'package:flutterapp13_bmi_calculatoranddrawer/Splash1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body:Splash1(),
    ),debugShowCheckedModeBanner:false,);
  }
}