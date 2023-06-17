import 'package:flutter/material.dart';
import 'package:flutterapp08/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 95, 139, 235)),
          useMaterial3: true,
          textTheme: TextTheme(
            displayLarge: TextStyle(color: Colors.indigo[900], fontSize: 20),
           
            displayMedium: TextStyle(color: Colors.indigo[800], fontSize: 20),
            bodyLarge: TextStyle(fontSize: 30),
          )),
     home:Scaffold(
    body: form()

     ),
    );
  }
}