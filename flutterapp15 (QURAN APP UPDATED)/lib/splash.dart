import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp15/Apptabs.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  get image => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Apptabs()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(160, 75, 44, 1),
              Color.fromARGB(227, 243, 152, 119),
            ],
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                Image.asset(
                  "assets/images/image2.png",
                  height: 300,
                  width: 300,
                ),
                Text(
                  "وَٱلْقُرْءَانِ ٱلْحَكِيم",
                  //"منتخب قرآنی  سورتیں",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'quran',
                      fontSize: 45,
                      color: Color.fromRGBO(228, 226, 226, 1)),
                ),
              ]),
              CircularProgressIndicator(),
            ]),
      ),
    );
  }
}
