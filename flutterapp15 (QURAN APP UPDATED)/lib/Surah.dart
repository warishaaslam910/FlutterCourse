// import 'package:flutter/material.dart';
// import 'package:quran/quran.dart' as quran;

// // ignore: must_be_immutable
// class Surah extends StatefulWidget {
//   int indexsurah;

//   Surah(this.indexsurah, {super.key});

//   @override
//   State<Surah> createState() => _SurahState();
// }

// class _SurahState extends State<Surah> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(
//             quran.getSurahName(widget.indexsurah + 1),
//             style: TextStyle(fontFamily: 'fontqur', color: Colors.white),
//           ),
//           backgroundColor: Colors.brown[900]),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//               Expanded(
//                   child: Card(
//                 color: Colors.brown,
//                 child: ListView.builder(
//                   itemCount: quran.getVerseCount(widget.indexsurah + 1),
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: ListTile(
//                         title: Text(
//                           quran.getVerse(widget.indexsurah + 1, index + 1,
//                               verseEndSymbol: false),
//                           textAlign: TextAlign.right,
//                           style: TextStyle(
//                               fontSize: 25,
//                               fontFamily: 'fontqur',
//                               color: Color.fromARGB(255, 245, 247, 241)),
//                         ),
//                         leading: CircleAvatar(
//                           child: Text("${index + 1}",
//                               style: TextStyle(
//                                 color: Colors.white,
//                               )),
//                           backgroundColor:
//                               const Color.fromARGB(255, 109, 66, 58),
//                         ),
//                       ),
//                       margin: const EdgeInsets.all(10),
//                       shape: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: const BorderSide(color: Colors.white)),
//                     );
//                   },
//                 ),
//                 margin: const EdgeInsets.all(10),
//                 shape: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(color: Colors.white)),
//               )),
//             ],
//           ),
//         ),
//       ),
//       backgroundColor: const Color.fromARGB(255, 109, 66, 58),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

// ignore: must_be_immutable
class Surah extends StatefulWidget {
  int indexsurah;

  Surah(this.indexsurah, {super.key});

  @override
  State<Surah> createState() => _SurahState();
}

class _SurahState extends State<Surah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            quran.getSurahName(widget.indexsurah + 1),
            style: TextStyle(fontFamily: 'quran', color: Colors.white),
          ),
          backgroundColor: Colors.brown[900]),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: quran.getVerseCount(widget.indexsurah + 1),
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color.fromARGB(255, 109, 66, 58),
                    child: ListTile(
                      title: Text(
                        quran.getVerse(widget.indexsurah + 1, index + 1,
                            verseEndSymbol: false),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'quran',
                            color: Color.fromARGB(255, 245, 247, 241)),
                      ),
                      leading: CircleAvatar(
                        child: Text("${index + 1}",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        backgroundColor: const Color.fromARGB(255, 109, 66, 58),
                      ),
                    ),
                    margin: const EdgeInsets.all(10),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.brown)),
                  );
                },
              )),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 109, 66, 58),
    );
  }
}
