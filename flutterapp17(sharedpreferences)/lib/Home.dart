import 'package:flutter/material.dart';
import 'package:flutterapp17_sharedpreferences/Splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Warisha"),
        ElevatedButton(onPressed: (){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Splash()));
        }, child: Text("LOG OUT"))
        ],
        
      ),
    );
  }
}
