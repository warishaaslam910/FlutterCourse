import 'dart:convert';

import 'package:flutter/material.dart';
 import 'package:http/http.dart' as http;

class Quranap1 extends StatefulWidget {
  const Quranap1({super.key});

  @override
  State<Quranap1> createState() => _Quranap1State();
}

class _Quranap1State extends State<Quranap1> {
  getinfo() async{
    var surah=[];
var response=await http.get(Uri.https("api.alquran.cloud","v1/surah"));
var jsonData=jsonDecode(response.body);
print(jsonData);
for (var i in jsonData)
{
modeldata surah1=modeldata(i["englishName"]);
surah.add(surah1);
}
return surah;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
    );
  }
}
class modeldata
{
  // var number;
  // var name;
  var englishName;
  modeldata(this.englishName);
}