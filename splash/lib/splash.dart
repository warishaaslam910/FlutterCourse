import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash/dashboard.dart';

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
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              color: Colors.blue,
              child: Center(
                  child: Text(
                "Warisha Aslam ",
                style: TextStyle(fontSize: 30, color: Colors.white),
              )))),
    );
  }
}
