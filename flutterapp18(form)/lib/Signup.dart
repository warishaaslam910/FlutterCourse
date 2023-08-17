import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
               
                  TextField(
                   
                    decoration: InputDecoration(
                      
                      hintText: "enter your username",
                      prefixIcon: Icon(Icons.verified_user),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text("PASSWORD "),
                  TextField(
                   
                    decoration: InputDecoration(
                      hintText: "enter your username",
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                ],
              ),),
             
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
    
    );
  }
}