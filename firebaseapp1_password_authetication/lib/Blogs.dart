import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  final String blogTitle;
  final String blogDescription;
  final String ind;
  final DatabaseReference dbref;
  Blogs(
      {required this.blogTitle,
      required this.blogDescription,
      required this.ind,
      required this.dbref});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: widget.dbref.child(widget.ind).onValue,
              builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                // if (snapshot.hasData && snapshot.data!.snapshot.value != null)
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else {
                  Map<dynamic, dynamic> map =
                      snapshot.data!.snapshot.value as dynamic;
                  List list = [];
                  list = map.values.toList();

                  return ListView.builder(
                      itemCount: snapshot.data!.snapshot.children.length,
                      itemBuilder: (context, index) {
                        return Card(
                            elevation: 5,
                            child: ListTile(
                              focusColor: Color.fromARGB(255, 236, 135, 95),
                              leading: Text(list[index]['widget.blogTitle']),
                              title:
                                  Text(list[index]['widget.blogDescription']),
                            ));
                      });
                }
              },
            ),
          )
// /////////////////////////////////////////////////////////////////////////
//           ///  Expanded(
//           //   child: StreamBuilder(
//           //     stream: widget.dbref.child(widget.ind).onValue,
//           //     builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
//           //       if (snapshot.hasData && snapshot.data!.snapshot.value != null) {
//           //         return ListTile(
//           //           leading: Text("Blog Title: ${widget.blogTitle}"),
//           //           title: Text("Blog Description: ${widget.blogDescription}"),
//           //         );
//           //       } else if (snapshot.hasError) {
//           //         return Text("Error: ${snapshot.error}");
//           //       } else {
//           //         return CircularProgressIndicator();
//           //       }
//           //     },
//           //   ),
//           // )
        ],
      ),
    );
  }
}
