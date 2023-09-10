import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp1_password_authetication/Login.dart';
import 'package:firebaseapp1_password_authetication/Otp.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  var phonenumbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHONE VERIFICATION'),
        backgroundColor: Colors.lightBlue.shade900,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " Enter Phone No :",
                style: TextStyle(
                    color: Colors.lightBlue.shade900,
                    fontFamily: 'RobotoSlab',
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: TextField(
                controller: phonenumbercontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Phone Number',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.phone),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () async {
                    FirebaseAuth auth = FirebaseAuth.instance;
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: phonenumbercontroller.text,
                      verificationCompleted:
                          (_) {}, //PhoneAuthCredential credential //context created
                      verificationFailed: (FirebaseAuthException e) {
                        toastmsg("${e}");
                      },
                      codeSent: (String verificationId, int? resendToken) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Otp(verificationId: verificationId)));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  child: Text("VERIFY"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue.shade900),
                )),
          ],
        ),
      ),
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
