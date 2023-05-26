import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutterapp06/pages.dart';
import 'package:flutterapp06/tabs.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  get image => null;


// void initState() {
    
//   super.initState();

//     Timer(Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => tabs()));
//     });
//   }

  void initState() {
    super.initState();
       
      Timer(Duration(seconds: 5), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => tabs()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("bb"),
    );
  }
}

