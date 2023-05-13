import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class Surah2 extends StatefulWidget {
  const Surah2({super.key});

  @override
  State<Surah2> createState() => _Surah2State();
}

class _Surah2State extends State<Surah2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.alphaBlend(Colors.brown, Colors.transparent),
        title: Text(quran.getSurahName(2)),
      ),
      body: Container(
        color: Color.fromARGB(255, 223, 175, 131),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  Text(quran.getSurahNameArabic(2),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color: Color.alphaBlend(
                              Color.fromARGB(255, 124, 82, 66),
                              Colors.transparent),
                          fontSize: 25)),
                  Text(quran.getSurahNameEnglish(2),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color: Color.alphaBlend(
                              Colors.brown, Colors.transparent),
                          fontSize: 25)), //40

                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            SizedBox(
                              height: 425, //360
                              child: ListView.builder(
                                itemCount: quran.getVerseCount(1),
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      quran.getVerse(2, index + 1,
                                          verseEndSymbol: false),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: 'quran', fontSize: 26),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ]),
                        ]),
                  )
                ], //children
              ),
            ),
          ),
        ),
      ),
    );
  }
}
