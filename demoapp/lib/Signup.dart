import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // var useremail = TextEditingController();
  // var userpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            Expanded(child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
              ),
            child:Column(
              children: [
                Row(
              children: [
                Text("USER NAME "),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your username",
                    prefixIcon: Icon(Icons.verified_user),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("PASSWORD "),
                TextField(
                 
                  decoration: InputDecoration(
                    hintText: "enter your username",
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                  children: [
                    Center(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("SIGN UP"))),
                  ],
                ),
                Row(
                  children: [
                    Center(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("SIGN UP"))),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("With Google"),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("LOG IN")),
                  ],
                ),
              ]
              ),
            ),
              ],
            ),
              
            ),
            ),
            
          ],
        ),
      ),
      backgroundColor: Colors.orange,
    );
  }
}
