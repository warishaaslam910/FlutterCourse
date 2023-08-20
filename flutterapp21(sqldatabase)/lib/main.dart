import 'package:flutter/material.dart';
import 'package:flutterapp21_sqldatabase/DatabaseScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DatabaseScreen(),
      ),
    );
  }
}
