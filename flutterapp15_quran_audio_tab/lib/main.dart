import 'package:flutter/material.dart';
import 'package:flutterapp15_quran_audio_tab/Apptabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Apptabs(),
    ),);
  }
}