import 'package:flutter/material.dart';

class Exp extends StatefulWidget {
  const Exp({super.key});

  @override
  State<Exp> createState() => _ExpState();
}

class _ExpState extends State<Exp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(

            flex: 1,
              child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          )),
           Expanded(
            flex: 2,
            
              child: 
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          )),
           Expanded(
            flex: 3,
              child: 
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          )),
          Expanded(
            flex: 10,
              child: Container(
            width: 100,
            height: 100,
            color: Colors.teal,
          ))
        ],
      ),
    );
  }
}
