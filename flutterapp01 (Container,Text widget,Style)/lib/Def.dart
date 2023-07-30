import 'package:flutter/material.dart';




class Def extends StatefulWidget {
  const Def({super.key});

  @override
  State<Def> createState() => _DefState();
}

class _DefState extends State<Def> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Container(
          child:Text("PAGE3"), 
       ),
    );
  }
}