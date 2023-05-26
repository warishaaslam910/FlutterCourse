import 'package:flutter/material.dart';

class pages extends StatefulWidget {
  const pages({super.key});

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                  child: Text("Home"),
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 165, 206, 240)),
            ),
            Expanded(
              flex: 5,
              child: Container(
                  child: Text("Lectures"),
                  width: 100,
                  height: 100,
                  color:  Color.fromARGB(255, 165, 206, 240)),
            )
          ],
        ),
        Wrap(direction: Axis.horizontal, 
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                    child: Text("Home"),
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 165, 206, 240)),
              ),
              Expanded(
                flex: 5,
                child: Container(
                    child: Text("Lectures"),
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 165, 206, 240)),
              )
            ],
          ),
        ]),

        
      ]),
    );
  }
}
