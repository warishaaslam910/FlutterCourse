import 'package:flutter/material.dart';
import 'package:lecture24api_integration/Apilec1.dart';
import 'package:lecture24api_integration/Apilect3.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Apilec3()),);
  }
}

