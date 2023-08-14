import 'package:flutter/material.dart';
import 'package:flutterapp14_animations/Fooanim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  body: Fooanim(),
),
    );
  }
}