import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutterapp06/splash2.dart';

// import 'package:flutterapp06/tabs.dart';

import 'dart:async';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  
  double boxwidth = 100;
  double boxheight = 200;

  var deco_box = BoxDecoration(
    color: Color.fromARGB(255, 250, 253, 249),
    borderRadius: BorderRadius.circular(21),
    border: Border.all(color: Color.fromARGB(255, 12, 51, 119)),
  );
  bool flag = true;
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), (() {
      addanim();
    }));
  }
void addanim() {
    if (flag) {
      boxwidth = 300;
      boxheight = 200;

      deco_box = BoxDecoration(
          color: Color.fromARGB(255, 241, 249, 255),
          borderRadius: BorderRadius.circular(21),
          border: Border.all(color: Color.fromARGB(255, 12, 51, 119)));

      flag = false;
    } else {
      boxwidth = 200;
      boxheight = 300;
      deco_box = BoxDecoration(
        color: Color.fromARGB(255, 243, 249, 255),
        borderRadius: BorderRadius.circular(16),
      );

      flag = true;
    }

    setState(() {});
   void changescreen() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Splash2()));
    }

    Timer(Duration(seconds: 6), () {
      changescreen();
    }); 
    


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 200, 20, 0),
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                AnimatedContainer(
                  width: boxwidth,
                  height: boxheight,
                  curve: Curves.bounceIn,
                  decoration: deco_box,
                  duration: Duration(seconds: 6),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/mybook_logo3.png",width: 120,height: 120,),
                ),
              ],
            ),
          ]),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 15, 73, 121),
    );
  }

  
}
