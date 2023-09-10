import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'Blogs.dart';

class Addblog extends StatefulWidget {
  const Addblog({super.key});

  @override
  State<Addblog> createState() => _AddblogState();
}

class _AddblogState extends State<Addblog> {
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
                final key = FirebaseAuth.instance.currentUser!.uid;
                dbref.child(key).child(DateTime.now().toString()).set({
                  "Title": titlecontroller.text,
                  "Desc": desccontroller.text,
                }).then(
                  (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Blogs(
                              blogTitle: titlecontroller.text,
                              blogDescription: desccontroller.text,
                              ind: key,
                              dbref: dbref))),
                ); //  dbref.child(key).set({});
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
