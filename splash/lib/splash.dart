import 'dart:async';

import 'package:flutter/material.dart';

import 'package:splash/splash2.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => splash2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              color: const Color.fromARGB(255, 33, 243, 68),
              child: Center(
                  child: Text(
                "Warisha  ",
                style: TextStyle(fontSize: 30, color: Colors.white),
              )))),
    );
  }
}
