import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.alphaBlend(Colors.teal, Colors.transparent),
          title: Text(quran.getSurahName(55)),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  Text("Surah Name :" + quran.getSurahNameArabic(55),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color: Color.alphaBlend(
                              Color.fromARGB(255, 79, 8, 211),
                              Colors.transparent),
                          fontSize: 40)),
                  Text("Surah Name (English): " + quran.getSurahNameEnglish(55),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color: Color.alphaBlend(
                              Color.fromARGB(255, 30, 57, 211),
                              Colors.transparent),
                          fontSize: 40)),
                  SizedBox(
                    height: 361,
                    child: ListView.builder(
                      itemCount: quran.getVerseCount(55),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            quran.getVerse(55, index + 1, verseEndSymbol: true),
                            textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'quran', fontSize: 26),
                          ),
                        );
                      },
                    ),
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
