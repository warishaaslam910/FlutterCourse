import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext details) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          child: Text("GO BACK"),
          onPressed: (() {
            Navigator.pop(details);
          }),
        ),
      ),
    );
  }
}
