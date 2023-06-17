import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutterapp06/splash2.dart';

// import 'package:flutterapp06/tabs.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  get image => null;

  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Splash2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          
          
          // Positioned(
          //   top: 200,
          //   left: 160,
          //   child: Container(
          //     child: Image.asset(
          //       "assets/images/mybook_logo.png",
          //       height: 160,
          //       width: 160,
          //     ),
          //   ),
          // ),
         
 Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                Image.asset(
                    "assets/images/mybook_logo.png",
                height: 160,
                width: 160,
                 
                ),
               Text(
                "MY BOOK",
                 textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 17, 37, 218)),
              ),
              ]),
             
            ]),

          // Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     child: Text(
          //       "MY BOOK",
          //        textAlign: TextAlign.center,
          //       style: TextStyle(
          //           fontSize: 25, color: Color.fromARGB(255, 17, 37, 218)),
          //     ),
          //   ),
          // ),
         
         
          // Positioned(
          //     left: 0,
          //     right: 0,
          //     bottom: 0,
          //     child: Container(
          //       color: Color.fromARGB(255, 44, 61, 174),
          //       width: 200,
          //       height: 100,
          //     )),
        ]),

        //shape
      ),
    );
  }
}



  // body:
              
  //             Container(
  //               child: Positioned(
  //                 top: 50,
  //                 child: Container(
                  
  //                  width: 2000,
  //                 height: 500,
  //                   decoration: BoxDecoration(
                     
  //                     color: Color.fromARGB(255, 68, 0, 156),
  //                     shape: BoxShape.circle,
  //                     // borderRadius: BorderRadius.circular(25),
                      
  //                   ),
  //                 ), ),
  //             )