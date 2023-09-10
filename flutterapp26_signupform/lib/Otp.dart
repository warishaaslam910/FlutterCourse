import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP VERIFICATION'),
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
                " Enter OTP",
                style: TextStyle(
                    color: Colors.lightBlue.shade900,
                    fontFamily: 'RobotoSlab',
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Pin',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.verified_user),
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
                onPressed: () {},
                child: Text("Done"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue.shade900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
