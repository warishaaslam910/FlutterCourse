import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  List<dynamic> mytasks = [1, 2, 3, 4];
  var output = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo List'),
      ),
      body: ListView.builder(
          itemCount: mytasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${mytasks[index]}"),
              trailing: Container(
                width: 60,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mytasks.remove(index);
                        });
                      },
                      child: Icon(Icons.delete),
                    ),
                    /////////////////////////////////////////////////////////////////
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
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
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
                      child: Text('ADD'))
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
