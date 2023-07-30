import 'package:flutter/material.dart';
import 'package:flutterapp15_quran_audio_tab/Surahaudi.dart';
import 'package:quran/quran.dart' as quran;



class Surahindex extends StatefulWidget {
  const Surahindex({super.key});

  @override
  State<Surahindex> createState() => _SurahindexState();
}

class _SurahindexState extends State<Surahindex> {
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
                          builder: (context) => Surahaudi(index),
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