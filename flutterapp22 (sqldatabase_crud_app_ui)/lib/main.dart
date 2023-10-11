import 'package:flutter/material.dart';

import 'Create.dart';
import 'Screen.dart';
// import 'Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Screen(),
      ),
    );
  }
}
