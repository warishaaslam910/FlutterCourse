import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp1_password_authetication/Login.dart';
import 'package:flutter/material.dart';

import 'Addblog.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 165, 77),
        title: Text(
          "MY BLOGS",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Addblog()));
              },
              icon: Icon(Icons.add)),
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login())));
              }),
        ],
      ),
      body: Text("dfh"),
    );
  }
}
