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
          backgroundColor: Color.alphaBlend(
              Color.fromRGBO(0, 150, 136, 1), Colors.transparent),
          title: Text(quran.getSurahName(55)),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  Text(quran.getSurahNameArabic(55),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color:
                              Color.alphaBlend(Colors.teal, Colors.transparent),
                          fontSize: 20)),
                  Text(quran.getSurahNameEnglish(55),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color:
                              Color.alphaBlend(Colors.teal, Colors.transparent),
                          fontSize: 20)),
                  Container(
                    color: Color.fromARGB(255, 163, 199, 181),
                    child: SizedBox(
                      height: 640, //361 //590
                      child: ListView.builder(
                        itemCount: quran.getVerseCount(55),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              quran.getVerse(55, index + 1,
                                  verseEndSymbol: false),
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(fontFamily: 'quran', fontSize: 22),
                            ),
                          );
                        },
                      ),
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
