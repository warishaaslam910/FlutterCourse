import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

late String responsedata;
late Map mapresp;
late List listresp;

class Apilec3 extends StatefulWidget {
  const Apilec3({super.key});

  @override
  State<Apilec3> createState() => _Apilec3State();
}

class _Apilec3State extends State<Apilec3> {


  
  Future apicallkardo() async {
    http.Response response =
        await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

    if (response.statusCode == 200) {
      setState(() {
        // responsedata = response.body;

        mapresp = jsonDecode(response.body);
        listresp = mapresp["data"];
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
    // return Scaffold(
    //     body: Center(
    //         child: Container(
    //   width: 500,
    //   height: 500,
    //   color: Colors.amber,
    //   child: Text(
    //       // responsedata.toString()),
    //       // mapresp["support"]["url"].toString()
    //       listresp[3]["first_name"].toString()),
    // )));

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listresp[index]["first_name"]),
            subtitle: Text(listresp[index]["email"]),
            trailing: Text(listresp[index]["id"].toString()),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(listresp[index]["avatar"]),
            ),
          );
        },
        itemCount: listresp.length,
      ),
    );
  }
}
