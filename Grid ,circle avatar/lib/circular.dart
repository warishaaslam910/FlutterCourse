import 'package:flutter/material.dart';

class Circular extends StatefulWidget {
  const Circular({super.key});

  @override
  State<Circular> createState() => _CircularState();
}

class _CircularState extends State<Circular> {
  var arraycolors = [
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.orange,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: arraycolors[index],
          ),
          title: Text("Warisha"),
          subtitle: Text("depend karta hai ..."),
          trailing: Icon(Icons.abc_rounded),
        );
      },
      itemCount: arraycolors.length,
    )
    );
  }
}
