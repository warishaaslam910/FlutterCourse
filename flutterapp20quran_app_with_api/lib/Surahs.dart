import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp20quran_app_with_api/Surahindex.dart';
import 'package:http/http.dart' as http;

late Map globalmap = {};
late Map datamap = {};
late List datalist = [];

class Surahs extends StatefulWidget {
  final Surahindex name;
  Surahs({Key? key, required this.name}) : super(key: key);

  @override
  State<Surahs> createState() => _SurahsState();
}

class _SurahsState extends State<Surahs> {
  Future getapi() async {
    http.Response response = await http
        .get(Uri.parse("http://api.alquran.cloud/v1/quran/quran-uthmani"));
    if (response.statusCode == 200) {
      setState(() {
        globalmap = jsonDecode(response.body);
        datamap = globalmap["data"];
        datalist = datamap["surahs"][widget.name.number]["ayahs"];
      });
    }
  }

  @override
  void initState() {
    
    super.initState();
    getapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${datalist[index]["text"]}",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontFamily: 'alq', color: Colors.black),
            ),
          );
        },
        itemCount: datalist == null ? 0 : datalist.length,
      ),
    );
  }
}
