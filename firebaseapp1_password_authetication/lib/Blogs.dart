import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebaseapp1_password_authetication/Login.dart';
import 'Addblog.dart';
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
  final key = FirebaseAuth.instance.currentUser!.uid;

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 165, 77),
        title: Text(
          "MY Personal BLOGS",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login())));
              }),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(21),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'search here',
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Expanded(
            child: StreamBuilder(
                stream: widget.dbref.child(widget.ind).onValue,
                builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}");
                  } else if (snapshot.data!.snapshot.value == null) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    List<Object?> list = [];
                    list = snapshot.data!.snapshot.value as List<Object?>;

                    return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          Object? items = list[index];

                          if (items is Map<dynamic, dynamic>) {
                            final sea = items["Title"].toString();
                            if (sea
                                .contains(searchController.text.toString())) {
                              return myCustomListTile(items);
                            } else if (searchController.text.isEmpty) {
                              return myCustomListTile(items);
                            }
                          } else if (items == null) {
                            return Container();
                          } else {
                            return ListTile(
                              title: Text(items.toString()),
                            );
                          }
                        });
                  }
                }),
          )
        ],
      ),
    );
  }

  Widget myCustomListTile(Map<dynamic, dynamic> items) {
    return ListTile(
      textColor: Colors.white,
      focusColor: Color.fromARGB(255, 95, 97, 236),
      tileColor: Color.fromARGB(255, 223, 117, 17),
      leading: Text(items["Title"].toString()),
      title: Text(items["Desc"].toString()),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                // postid++;
                //"Id"
                int postid = int.parse(items["ID"].toString());
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
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                // postid++;
                //"Id"
                int deleteid = int.parse(items["ID"].toString());
                if (deleteid > 0) {
                  // int postID = postid;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Addblog(
                                deleteid,
                              )));
                }
              },
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                // postid++;
                //"Id"
                int deleteid = int.parse(items["ID"].toString());
                if (deleteid > 0) {
                  // int postID = postid;
                  widget.dbref.child(key).child("${deleteid}").remove();
                }
              },
              icon: Icon(
                Icons.delete_forever_sharp,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
