import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash/dashboard.dart';

class splash2 extends StatefulWidget {
  const splash2({super.key});

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
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
                style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 230, 26, 26)),
              )))),
    );
  }
}