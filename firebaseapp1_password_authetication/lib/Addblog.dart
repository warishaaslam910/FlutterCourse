import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebaseapp1_password_authetication/Login.dart';
import 'package:flutter/material.dart';

import 'Blogs.dart';

class Addblog extends StatefulWidget {
  final int postID;
  Addblog(this.postID, {super.key});

  @override
  State<Addblog> createState() => _AddblogState();
}

class _AddblogState extends State<Addblog> {
  int id = 0;

  var titlecontroller = TextEditingController();
  var desccontroller = TextEditingController();
  DatabaseReference dbref = FirebaseDatabase.instance.ref("Posts");
  // final key = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Add Blog"),
        leading: Icon(
          Icons.create_outlined,
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () async {
                id++;
                final key = FirebaseAuth.instance.currentUser!.uid;
                if (widget.postID != null) {
                  dbref.child(key).child('$widget.postID').update({
                    // "Id": widget.postID,
                    "ID": widget.postID,
                    "Title": titlecontroller.text,
                    //  "Description": desccontroller.text,
                    "Desc": desccontroller.text,
                    "Dateofpost": DateTime.now().toString()
                  }).then((value) {
                    toastmsg("Successfully Updated");
                  }).onError((error, stackTrace) {
                    toastmsg("$error");
                  });
                } else {
                  dbref.child(key).child("$id").set({
                    "ID": id,
                    "Title": titlecontroller.text,
                    "Desc": desccontroller.text,
                    "Dateofpost": DateTime.now().toString()
                  }).then(
                    (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Blogs(
                                blogID: "ID",
                                blogTitle: "Title",
                                blogDescription: "Desc",
                                ind: key,
                                dbref: dbref))),
                  ); //  dbref.child(key).set({});
                }
              },
              icon: Icon(Icons.post_add)),
        ],
      ),
      body: Scrollbar(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: titlecontroller,
                minLines: 2,
                maxLines: 20,
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "Enter Title",
                  labelStyle: TextStyle(
                    color: Colors.orange,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: desccontroller,
                minLines: 2,
                maxLines: 20,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.orange,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Description",
                  hintText: "Enter Description",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
