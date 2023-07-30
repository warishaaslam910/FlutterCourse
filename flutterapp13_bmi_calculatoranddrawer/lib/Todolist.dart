import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  
  var output = "";
  List<dynamic> mytasks = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO LIST"),
        backgroundColor: const Color.fromARGB(255, 26, 82, 28),
      ),
      body: ListView.builder(
          itemCount: mytasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Color.fromARGB(255, 134, 187, 118),
              title: Text("${mytasks[index]}"),
              trailing: Container(
                width: 70,
                child: Row(
                  children: [
                    
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Update your task"),
                                content: TextField(
                                  onChanged: (value) {
                                    output = value;
                                  },
                                ),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          mytasks.replaceRange(
                                              index, index + 1, {output});
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Update"))
                                ],
                              );
                            });
                      },
                      child: Icon(Icons.edit),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mytasks.removeAt(index);
                        });
                      },
                      child: Icon(Icons.delete),
                    ),
                    
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 18, 66, 19),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Add your task"),
                    content: TextField(
                      onChanged: (value) {
                        output = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              mytasks.add(output);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Submit"))
                    ],
                  );
                });
          },
          child: Icon(Icons.add)),
    );
  }
}