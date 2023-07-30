import 'package:flutter/material.dart';

class gridlayout extends StatefulWidget {
  const gridlayout({super.key});

  @override
  State<gridlayout> createState() => _gridlayoutState();
}

class _gridlayoutState extends State<gridlayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
     maxCrossAxisExtent: 100,
        
        children: [
          
         Container(
          
                  width: 100,
                  height: 100,
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
          Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 165, 206, 240),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                    child: Column(
                      children: [
                        Icon(Icons.phone),
                        Text("    "),
                        Text(
                          textAlign: TextAlign.center,
                          "Lectures",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 165, 206, 240),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                    child: Column(
                      children: [
                        Icon(Icons.phone),
                        Text("    "),
                        Text(
                          textAlign: TextAlign.center,
                          "Chats",
                        ),
                      ],
                    ),
                  ),
                ),
          
        ],
      ),
    );
  }
}
