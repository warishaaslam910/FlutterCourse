import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
// import 'package:google_fonts_arabic/google_fonts_arabic.dart' as fonts;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(quran.getSurahName(2)),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(35.0),
            child: Column(
              children: [
                Text(
                  "\nSurah Name: " +
                      quran.getSurahName(1) +
                      "\n\tSurah Name (English): " +
                      quran.getSurahNameEnglish(1),
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.alphaBlend(Colors.green, Colors.white),
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    itemCount: quran.getVerseCount(1),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          quran.getVerse(1, index + 1, verseEndSymbol: true),
                          textAlign: TextAlign.right,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp();
// }
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text(quran.getSurahName(1)),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(55.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListView.builder(
//                 itemCount: quran.getVerseCount(1),
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       quran.getVerse(1, index + 1, verseEndSymbol: true),
//                       textAlign: TextAlign.right,
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ));
// }





//   void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(quran.getSurahName(1)),
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.all(15.0),
//             child: ListView.builder(
//               itemCount: quran.getVerseCount(1),
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(
//                     quran.getVerse(1, index + 1, verseEndSymbol: true),
//                     textAlign: TextAlign.right,
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }