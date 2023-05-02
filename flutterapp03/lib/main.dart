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
          backgroundColor: Color.fromARGB(255, 8, 72, 189),
          title: Text(quran.getSurahName(1)),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  Text("Surah Name :" + quran.getSurahNameArabic(1),
                      style: TextStyle(
                          fontFamily: 'quran',
                          color:
                              Color.alphaBlend(Colors.blue, Colors.transparent),
                          fontSize: 40)),
                  SizedBox(
                    height: 360,
                    child: ListView.builder(
                      itemCount: quran.getVerseCount(1),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            quran.getVerse(1, index + 1, verseEndSymbol: true),
                            textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'quran'),
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
