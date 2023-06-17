import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp06/pages.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => pages()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Text(
                    "MY BOOK",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 45,
                        color: const Color.fromARGB(255, 7, 78, 136)),
                  ),
                ),
                Image.asset(
                  "assets/images/clipart3.png",
                  height: 560,
                  width: 360,
                ),
              ],
            ),
          ],
        ),
      ),

      //shape
    );
  }
}
