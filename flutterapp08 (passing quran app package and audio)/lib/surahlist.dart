// import 'package:flutter/material.dart';
// import 'package:quran/quran.dart' as quran;

// class surahlist extends StatefulWidget {
//   const surahlist({super.key});

//   @override
//   State<surahlist> createState() => _surahlistState();
// }

// class _surahlistState extends State<surahlist> {
//   @override
//   Widget build(BuildContext context)
//    {
//     return Scaffold(
// body: ListView.builder(itemBuilder: (context, index) {
//     return Card(
// child: ListTile(
//   title:Text(quran.getSurahName(index+1),
//    style: TextStyle(color: Colors.white)) ,
//   subtitle: Text(quran.getSurahNameEnglish(index+1),
//    style: TextStyle(color: Colors.white)
// ),
//     ));
//     },
//     itemCount: 114,)

//     );
    
//   }
// }

import 'package:flutter/material.dart';
// import 'package:flutterapp09/surah.dart';
import 'surah.dart';
import 'package:quran/quran.dart' as quran;



class Surahlist extends StatefulWidget {
  const Surahlist({super.key});

  @override
  State<Surahlist> createState() => _SurahlistState();
}

class _SurahlistState extends State<Surahlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "القرآن الکریم ",
              style: TextStyle(fontFamily: 'mushaf', color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown[900]),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => surah(index),
                        ));
                  },
                  title: Text(quran.getSurahName(index + 1),
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(quran.getSurahNameEnglish(index + 1),
                      style: TextStyle(color: Colors.white))),
              color: Colors.brown[900],
            );
          },
          itemCount: quran.totalSurahCount,
          // itemCount: 114,
        ));
  }
}