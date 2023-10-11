import 'package:flutter/material.dart';

import 'tabs.dart';

class Pages1 extends StatefulWidget {
  const Pages1({super.key});

  @override
  State<Pages1> createState() => _Pages1State();
}

class _Pages1State extends State<Pages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
        child: Column(children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => tabs()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    flex: 5,
                    child: Container(
                      width: 300,
                      height: 300,
                      color: Color.fromARGB(255, 165, 206, 240),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                        child: Column(
                          children: [
                            Icon(Icons.note_add_sharp),
                            Text("    "),
                            Text(
                              textAlign: TextAlign.center,
                              "Lectures",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Wrap(direction: Axis.horizontal, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                flex: 5,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Color.fromARGB(255, 165, 206, 240),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                    child: Column(
                      children: [
                        Icon(Icons.phone),
                        Text("    "),
                        Text(
                          textAlign: TextAlign.center,
                          "Contacts",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                flex: 5,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Color.fromARGB(255, 165, 206, 240),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                    child: Column(
                      children: [
                        Icon(Icons.mobile_friendly_outlined),
                        Text("    "),
                        Text(
                          textAlign: TextAlign.center,
                          "Contacts",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ]),
      ),
    ));
  }
}
