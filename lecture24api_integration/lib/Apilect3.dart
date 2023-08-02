import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

late String responsedata;

class Apilec3 extends StatefulWidget {
  const Apilec3({super.key});

  @override
  State<Apilec3> createState() => _Apilec3State();
}

class _Apilec3State extends State<Apilec3> {
  Future apicallkardo() async {
    http.Response response =
        await http.get(Uri.parse("https://reqres.in/api/users/2"));

    if (response.statusCode == 200) {
      setState(() {
        responsedata = response.body;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState

    apicallkardo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 800,
        color: Colors.amber,
        child: (responsedata == null)
            ? Text("data is loading")
            : Text("${responsedata}"),
      ),
    );
  }
}
