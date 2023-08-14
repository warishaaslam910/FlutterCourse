import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

late String response;
late Map response_map;
late List response_list=[];

class Quranap2 extends StatefulWidget {
  const Quranap2({super.key});

  @override
  State<Quranap2> createState() => _Quranap2State();
}

class _Quranap2State extends State<Quranap2> {
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
          return ListTile(
            leading: CircleAvatar(child: Text(response_list[index]["number"].toString())),
            title: Text(response_list[index]["englishName"].toString()),
            subtitle: Text(response_list[index]["englishNameTranslation"].toString()),
            trailing: Text(response_list[index]["numberOfAyahs"].toString()),
          );
        },
        // ignore: unnecessary_null_comparison
        itemCount: response_list == null ? 0 : response_list.length,
      ),
    );
  }
}
