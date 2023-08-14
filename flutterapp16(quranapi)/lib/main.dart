import 'package:flutter/material.dart';
import 'package:flutterapp16_quranapi/Quranap.dart';
import 'package:flutterapp16_quranapi/Quranap1.dart';
import 'package:flutterapp16_quranapi/Quranap2.dart';

import 'Quranlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Quranlist(),
    ),);
  }
}