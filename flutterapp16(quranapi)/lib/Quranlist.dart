import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Surahindex.dart';
import 'Surahs.dart';

late String response;
late Map response_map;
late List response_list = [];

class Quranlist extends StatefulWidget {
  const Quranlist({super.key});

  @override
  State<Quranlist> createState() => _QuranlistState();
}

class _QuranlistState extends State<Quranlist> {
  Future getapi() async {
    http.Response response =
        await http.get(Uri.parse("http://api.alquran.cloud/v1/surah"));
    if (response.statusCode == 200) {
      setState(() {
        response_map = jsonDecode(response.body);
        response_list = response_map["data"];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    getapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (response_list == Null) {
            return Center(child: Text("Data is loading ....."));
          } else {
            return ListTile(
              tileColor: Color.fromARGB(0, 27, 27, 182),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Surahs(name :Surahindex(
                          response_list[index]["number"],
                          response_list[index]["numberOfAyahs"],
                          response_list[index]["name"],
                          response_list[index]["englishName"])),
                    ));
              },
              leading: CircleAvatar(
                  child: Text(response_list[index]["number"].toString())),
              title: Text(response_list[index]["englishName"].toString()),
              subtitle: Text(
                  response_list[index]["englishNameTranslation"].toString()),
              trailing: Column(
                children: [
                  response_list[index]["revelationType"] == "Meccan"
                      ? Text("Makkah")
                      : Text("Madinah"),
                  Text(
                      "Verses ${response_list[index]["numberOfAyahs"].toString()}"),
                ],
              ),
            );
          }
        },
        // ignore: unnecessary_null_comparison
        itemCount: response_list == null ? 0 : response_list.length,
      ),
    );
  }
}
