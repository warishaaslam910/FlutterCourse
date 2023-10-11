import 'package:flutter/material.dart';
import 'package:flutterapp26_signupform/Home.dart';

import 'Login.dart';

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
        
          child: Padding(
        padding: EdgeInsets.fromLTRB(8, 100, 8, 0),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 38, 124),
                  fontSize: 25),
            ),
            SizedBox(
              height: 35,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ('Email'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ('Password'),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text('Already have an account ?',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 102, 100, 100))),
                InkWell(
                  child: Text('  Login',
                      style: TextStyle(
                          color: Color.fromRGBO(5, 23, 128, 0.78),
                          fontSize: 15)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text('SIGNUP')),
            )
          ],
        ),
      )),
    );
  }
}
