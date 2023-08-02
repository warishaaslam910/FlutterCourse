import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apilec extends StatefulWidget {
  const Apilec({super.key});

  @override
  State<Apilec> createState() => _ApilecState();
}

class _ApilecState extends State<Apilec> {
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
      //  body: Container(
      //   child: ElevatedButton(
      //       onPressed: getinfo, child: Text("get data from api")),
      // ),
        body: FutureBuilder(
      future: getinfo(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return Text("no data in api");
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data[index].a),
                subtitle: Text(snapshot.data[index].id),
              );
            },
          );
        }
      },
    )
    );
  }
}

class modeldata {
  var a;
  var email;
  var id;

  modeldata(this.a, this.email, this.id);
}
