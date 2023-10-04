import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp1_password_authetication/Home.dart';
import 'package:firebaseapp1_password_authetication/Login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 
  void initState() {
    super.initState();
    FirebaseAuth auth = FirebaseAuth.instance;
    final User = auth.currentUser;

    if (User != null) {
      Timer(Duration(seconds: 3), (() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      }));
    } else {
      Timer(Duration(seconds: 3), (() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("abc")),
    );
  }
}
