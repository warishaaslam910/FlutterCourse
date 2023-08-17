import 'package:flutter/material.dart';
import 'package:flutterapp20quran_app_with_api/Surahindex.dart';
import 'package:flutterapp20quran_app_with_api/Surahs.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

late String response;
late List response_list = [];
late Map response_map;

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
    getapi();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: ((context, index) {
          if (response_list == Null) {
            return Center(
              child: Text("Data loading......."),
            );
          } else {
            return ListTile(
              tileColor: Colors.brown,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Surahs(
                            name: Surahindex(
                                response_list[index]["number"],
                                response_list[index]["numberOfAyahs"],
                                response_list[index]["name"],
                                response_list[index]["englishName"]),
                          )),
                );
              },

              // leading: ,

              title: Text(response_list[index]["englishName"].toString()),

            );
          }
        }),
        itemCount: response_list == null ? 0 : response_list.length-1,
      ),
    );
  }
}
