import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Quranap extends StatefulWidget {
  const Quranap({super.key});

  @override
  State<Quranap> createState() => _QuranapState();
}

class _QuranapState extends State<Quranap> {
  getinfo() async {
    var surah = [];
    var response = await http.get(Uri.https("api.alquran.cloud", "v1/surah"));
    var jsonData = jsonDecode(response.body);
    print(jsonData);
    for (var i in jsonData) {
      modeldata surah1 = modeldata(i["englishName"]);
      surah.add(surah1);
    }
    return surah;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    title: Text(snapshot.data[index].eng),
                  );
                });
          }
        },
      ),
    );
  }
}

class modeldata {
  // var number;
  // var name;
  var eng;
  modeldata(this.eng);
}




