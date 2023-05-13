import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  var arrlist = ["warisha", "taha", "Ali", "fatimah"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(arrlist[index]);
        },
        itemCount: arrlist.length,
      ),
    );
  }
}
