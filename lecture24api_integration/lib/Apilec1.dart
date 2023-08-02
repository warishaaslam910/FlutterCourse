import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apilec1 extends StatefulWidget {
  const Apilec1({super.key});

  @override
  State<Apilec1> createState() => _Apilec1State();
}

class _Apilec1State extends State<Apilec1> {
  getinfo() async {
    var users = [];
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));

    var jsonData = jsonDecode(response.body);
    print(jsonData);

    for (var i in jsonData) {
      modeldata user = modeldata(i["name"], i["email"], i["address"]["street"]);

      users.add(user);
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        child: ElevatedButton(
            onPressed: getinfo, child: Text("get data from api")),
      ),
        
    );
  }
}

class modeldata {
  var a;
  var email;
  var id;

  modeldata(this.a, this.email, this.id);
}
