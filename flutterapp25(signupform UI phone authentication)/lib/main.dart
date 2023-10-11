import 'package:flutter/material.dart';
import 'package:flutterapp26_signupform/Otp.dart';
import 'package:flutterapp26_signupform/Signup.dart';
import 'package:flutterapp26_signupform/Phone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Phone(),
      ),
    );
  }
}
