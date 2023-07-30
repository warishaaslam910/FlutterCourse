import 'package:flutter/material.dart';
import 'package:flutterapp11/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: todo(),
        
      ),

    );
    
  }
}


