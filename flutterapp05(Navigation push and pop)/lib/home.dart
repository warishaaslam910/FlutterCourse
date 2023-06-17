import 'package:flutter/material.dart';
import 'package:flutterapp05/details.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext home) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Continue"),
          onPressed: (() {
            Navigator.push(
                home, MaterialPageRoute(builder: (home) => details()));
          }),
        ),
      ),
    );
  }
}
