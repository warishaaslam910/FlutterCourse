import 'package:flutter/material.dart';
import 'package:flutterapp17_sharedpreferences/Splash.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}