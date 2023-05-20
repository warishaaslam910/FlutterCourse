import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class surah7 extends StatefulWidget {
  const surah7({super.key});

  @override
  State<surah7> createState() => _surah7State();
}

class _surah7State extends State<surah7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.alphaBlend(Colors.brown, Colors.transparent),
        title: Text(quran.getSurahName(18)),
      ),
      body: Container(
        color: Color.fromARGB(255, 223, 175, 131),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  Text(quran.getSurahNameArabic(18),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color: Color.alphaBlend(
                              Color.fromARGB(255, 124, 82, 66),
                              Colors.transparent),
                          fontSize: 25)),
                  Text(quran.getSurahNameEnglish(18),
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
                            SingleChildScrollView(
                              child: SizedBox(
                                height: 425, //360
                                child: ListView.builder(
                                  itemCount: quran.getVerseCount(18),
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        quran.getVerse(18, index + 1,
                                            verseEndSymbol: false),
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontFamily: 'quran', fontSize: 26),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
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
