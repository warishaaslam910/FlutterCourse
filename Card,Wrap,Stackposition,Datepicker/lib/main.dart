import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const Cards());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(

          children: [
            Container(
              color: Colors.black,
              width: 400,
              height: 400,
            ),
            Container(
              color: const Color.fromARGB(255, 196, 39, 39),
              width: 300,
              height: 300,
            ),
            Positioned(
             
               right: 10,
                bottom: 10,
                child: Container(
                  color: Color.fromARGB(255, 44, 61, 174),
                  width: 200,
                  height: 200,
                )),
           Align(
            alignment: Alignment.center,
            child: Container(
              color: Color.fromARGB(255, 53, 220, 44),
              width: 100,
              height: 100,

            )),
            


// Positioned(
// bottom: 0,
// left:0,
// right: 0,

// child:Container(
// width: 200,
// height: 200,
//                 // width:double.infinity,
//                 // height: double.infinity,
//               decoration: BoxDecoration
//               (shape: BoxShape.rectangle,
//             color: Color.fromARGB(255, 217, 214, 224),
//               ),
//             )
//  ),

          ],
        ),
      ),
    ));
  }
}

class Wraps extends StatefulWidget {
  const Wraps({super.key});

  @override
  State<Wraps> createState() => _WrapsState();
}

class _WrapsState extends State<Wraps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Wrap(
          direction: Axis.vertical,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Card(
              shadowColor: Colors.green,
              elevation: 23,
              child: Text("current time : ${time.hour}: ${time.minute}"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "${DateFormat('MMMMd').format(time)}",
                style: TextStyle(color: Colors.white),
              ),
            ),
            color: Colors.green,
          ),
          Card(
            child: ListTile(
              title: Text("Codesinsider.com"),
            ),
            elevation: 12,
            shadowColor: Colors.green,
          ),
          Card(
            child: ListTile(
              title: Text("Codesinsider.com"),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          Card(
            child: ListTile(
              //leading: Icon(Icons.music_note),
              title: Text("Codesinsider.com"),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Card(
            child: ListTile(
              title: Text("Codesinsider.com"),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.amber, width: 3)),
          ),
          Container(
            height: 200,
            width: 200,
            child: Card(
              child: ListTile(
                title: Text("Codesinsider.com"),
              ),
              elevation: 8,
              shadowColor: Colors.green,
              margin: EdgeInsets.all(20),
            ),
          ),
          Card(
            child: Container(
              height: 160,
              width: 160,
              child: Center(
                child: ListTile(
                  title: Text("Codesinsider.com"),
                ),
              ),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
            shape: CircleBorder(
              side: BorderSide(width: 1, color: Colors.white),
            ),
          )
        ],
      ),
    )));
  }
}
