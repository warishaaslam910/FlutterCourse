import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late BuildContext _context;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    engrwarisa();
  }

  void engrwarisa() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    var loggedin = pref.getBool("name");

    Timer(Duration(seconds: 5), (() {
      if (loggedin != null) {
        if (loggedin) {
          Navigator.pushReplacement(
              _context, MaterialPageRoute(builder: (context) => Home()));
        } else {
          Navigator.pushReplacement(
              _context, MaterialPageRoute(builder: (context) => Login()));
        }
      } else {
        Navigator.pushReplacement(
            _context, MaterialPageRoute(builder: (context) => Login()));
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    _context = context;

    return Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/pic1.jpg'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 69, 24, 7),
                    Color.fromARGB(255, 154, 102, 106)
                  ]),
            ),
          ),
        ),
        backgroundColor: Colors.brown[900]);
  }
}
