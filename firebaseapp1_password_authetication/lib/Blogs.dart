import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebaseapp1_password_authetication/Addblog.dart';
import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  final String blogID;
  final String blogTitle;
  final String blogDescription;
  final String ind;
  final DatabaseReference dbref;

  Blogs(
      {Key? key,
      required this.blogID,
      required this.blogTitle,
      required this.blogDescription,
      required this.ind,
      required this.dbref})
      : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  // int postid = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: widget.dbref.child(widget.ind).onValue,
              builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else {
                  List<Object?> list = [];
                  list = snapshot.data!.snapshot.value as List<Object?>;

                  return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        Object? items = list[index];
                        if (items is Map<dynamic, dynamic>) {
                          return ListTile(
                            focusColor: Color.fromARGB(255, 95, 97, 236),
                            tileColor: Color.fromARGB(255, 223, 117, 17),
                            leading: Text(items["Title"].toString()),
                            title: Text(items["Desc"].toString()),
                            trailing: IconButton(
                                onPressed: () {
                                  // postid++;
                                  //"Id"
                                  int postid =
                                      int.parse(items["ID"].toString());
                                  if (postid > 0) {
                                    // int postID = postid;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Addblog(
                                                  postid,
                                                )));
                                  }
                                },
                                icon: Icon(Icons.edit)),
                          );
                        }
                        if (items == null) {
                          return Container();
                        } else {
                          return ListTile(
                            title: Text(items.toString()),
                          );
                        }
                      });
                }
              },
            ),
          )
// /////////////////////////////////////////////////////////////////////////
          // Blogs(
          //     {super.key,
          //     required this.blogTitle,
          //     required this.blogDescription,
          //     required this.ind,
          //     required this.dbref});

          // Map<dynamic, dynamic> map =
          //     snapshot.data!.snapshot.value as dynamic;
          // List<Object?> list = [];
          // list = map.values.toList();
          //  itemCount: snapshot.data!.snapshot.children.length,

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
