import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebaseapp1_password_authetication/Login.dart';
import 'package:flutter/material.dart';

import 'Blogs.dart';

int id = 0;

class Addblog extends StatefulWidget {
  final int? postID;
  Addblog(this.postID, {super.key});

  @override
  State<Addblog> createState() => _AddblogState();
}

class _AddblogState extends State<Addblog> {
  var titlecontroller = TextEditingController();
  var desccontroller = TextEditingController();
  final dbref = FirebaseDatabase.instance.ref("FinalWAUsers");
  final key = FirebaseAuth.instance.currentUser!.uid;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titlecontroller.clear();
    desccontroller.clear();
  }

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
                // final key = FirebaseAuth.instance.currentUser!.uid;
                if (widget.postID != null) {
                  dbref.child(key).child('${widget.postID}').update({
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
                  // id++ ko hum yahan pr lengy becuase to tab increment ho jab else true ho
                  id++;
                  dbref.child(key).child("$id").set({
                    "ID": id,
                    "Title": titlecontroller.text,
                    "Desc": desccontroller.text,
                    "Dateofpost": DateTime.now().toString()
                  }).then(
                    (value) {
                      toastmsg("Uploaded");

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Blogs(
                                  blogID: id.toString(),
                                  blogTitle: titlecontroller.text,
                                  blogDescription: desccontroller.text,
                                  ind: key,
                                  dbref: dbref)));
                    },
                  ).onError((error, stackTrace) {
                    print(" error warisha aslam $error");
                    toastmsg(error.toString());
                  }); //  dbref.child(key).set({});
                }
              },
              icon: Icon(Icons.post_add)),

// yeh abhi add kiya hai delete icon

          IconButton(
              onPressed: () {
                if (widget.postID != null) {
                  dbref
                      .child(key)
                      .child("${widget.postID}")
                      .remove()
                      .then((value) {
                    toastmsg("Successfully deleted");
                  }).onError((error, stackTrace) {
                    toastmsg("$error");
                  });
                }
              },
              icon: Icon(Icons.delete_forever)),
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





// import 'dart:ffi';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebaseapp1_password_authetication/Login.dart';
// import 'package:flutter/material.dart';

// import 'Blogs.dart';

// class Addblog extends StatefulWidget {
//   final int? postID;
//   Addblog(this.postID, {super.key});

//   @override
//   State<Addblog> createState() => _AddblogState();
// }

// class _AddblogState extends State<Addblog> {
//   int id = 0;

//   var titlecontroller = TextEditingController();
//   var desccontroller = TextEditingController();
//   final dbref = FirebaseDatabase.instance.ref("WA910");
//   // final key = FirebaseAuth.instance.currentUser!.uid;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.orange,
//         title: Text("Add Blog"),
//         leading: Icon(
//           Icons.create_outlined,
//           color: Colors.white,
//         ),
//         actions: [
//           IconButton(
//               onPressed: () async {
//                 final key = FirebaseAuth.instance.currentUser!.uid;
//                 if (widget.postID != null) {
//                   dbref.child(key).child('${widget.postID}').update({
//                     // "Id": widget.postID,
//                     "ID": widget.postID,
//                     "Title": titlecontroller.text,
//                     //  "Description": desccontroller.text,
//                     "Desc": desccontroller.text,
//                     "Dateofpost": DateTime.now().toString()
//                   }).then((value) {
//                     toastmsg("Successfully Updated");
//                   }).onError((error, stackTrace) {
//                     toastmsg("$error");
//                   });
//                 } 
//                 else {
//                   // id++ ko hum yahan pr lengy becuase to tab increment ho jab else true ho
//                   id++;
//                   dbref.child(key).child("$id").set({
//                     "ID": id,
//                     "Title": titlecontroller.text,
//                     "Desc": desccontroller.text,
//                     "Dateofpost": DateTime.now().toString()
//                   }).then(
//                     (value) {
//                       toastmsg("Uploaded");
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => Blogs(
//                                   blogID: id.toString(),
//                                   blogTitle: titlecontroller.text,
//                                   blogDescription: desccontroller.text,
//                                   ind: key,
//                                   dbref: dbref)));
//                     },
//                   ).onError((error, stackTrace) {
//                     print(" error warisha aslam $error");
//                     toastmsg(error.toString());
//                   }); //  dbref.child(key).set({});
//                 }
//               },
//               icon: Icon(Icons.post_add)),
//         ],
//       ),
//       body: Scrollbar(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: TextField(
//                 controller: titlecontroller,
//                 minLines: 2,
//                 maxLines: 20,
//                 decoration: InputDecoration(
//                   labelText: "Title",
//                   hintText: "Enter Title",
//                   labelStyle: TextStyle(
//                     color: Colors.orange,
//                   ),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: TextField(
//                 controller: desccontroller,
//                 minLines: 2,
//                 maxLines: 20,
//                 decoration: InputDecoration(
//                   labelStyle: TextStyle(
//                     color: Colors.orange,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Description",
//                   hintText: "Enter Description",
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

