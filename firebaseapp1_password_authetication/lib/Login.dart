import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Home.dart';
import 'Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var loginemail = TextEditingController();
  var loginpassword = TextEditingController();
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
              'LOGIN',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 38, 124),
                  fontSize: 25),
            ),
            SizedBox(
              height: 35,
            ),
            TextField(
              controller: loginemail,
              decoration: InputDecoration(
                hintText: ('Email'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: loginpassword,
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
                Text('Create an account ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 102, 100, 100))),
                InkWell(
                  child: Text('  Signup',
                      style: TextStyle(
                          color: Color.fromRGBO(5, 23, 128, 0.78),
                          fontSize: 15)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: loginemail.text,
                              password: loginpassword.text);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        toastmsg('NO USER FOUND');
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        toastmsg('INCORRECT PASSWORD');
                        print('Wrong password provided for that user.');
                      }
                      setState(() {});
                    }
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text('LOGI')),
            )
          ],
        ),
      )),
    );
  }
}

void toastmsg(msg) async {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Color.fromARGB(255, 6, 6, 190),
    textColor: Colors.red,
    fontSize: 16.0,
  );
}
