import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
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
                  onPressed: () {},
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
