import 'package:flutter/material.dart';
import 'package:flutterapp03/surah.dart';
import 'package:flutterapp03/surah2.dart';
import 'package:flutterapp03/surah3.dart';
import 'package:flutterapp03/surah4.dart';
import 'package:flutterapp03/surah5.dart';
import 'package:flutterapp03/surah6.dart';
import 'package:flutterapp03/surah7.dart';
import 'package:flutterapp03/surah8.dart';

import 'package:quran/quran.dart' as quran;
import 'package:flutter/widgets.dart';
import 'package:quran/surah_data.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text(
                "قرآن مجید",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: "quran",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),
            //1
            ListTile(
              onTap: ((() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Surah()));
              })),
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(1),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(1),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),
            //2
            ListTile(
              onTap: ((() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => surah2()));
              })),
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(60),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(60),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),
            //3
            ListTile(
              onTap: ((() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => surah3()));
              })),
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(3),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(3),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),

            //4
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (surah4())));
              },
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(55),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(55),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),
            //5
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (surah5())));
              },
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(56),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(56),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),

            //6
            ListTile(
              onTap: ((() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => surah6()));
              })),
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(67),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(67),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),
            //7
            ListTile(
              onTap: ((() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => surah7()));
              })),
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(18),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(18),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),
            //8
            ListTile(
              onTap: ((() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => surah8()));
              })),
              leading: Image.asset(
                "assets/images/star-removebg-preview.png",
                height: 40,
                width: 30,
              ),
              title: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameArabic(36),
                style: TextStyle(
                    fontSize: 38, fontFamily: "quran", color: Colors.white),
              ),
              subtitle: Text(
                textAlign: TextAlign.left,
                quran.getSurahNameEnglish(36),
                style: TextStyle(
                    fontSize: 13, fontFamily: "quran", color: Colors.white),
              ),
              trailing: Icon(Icons.favorite_outline),
              tileColor: Color.alphaBlend(Colors.brown, Colors.transparent),
            ),
          ],
        ).toList(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

// ListView(
          //   children:[
          //      Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: SingleChildScrollView(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Container(
          //               height: 100,
          //               width: 1500,
          //               color:     Color.alphaBlend(Colors.brown, Colors.transparent),
          //               child: SizedBox(
          //                 child: Text(
          //                   "قرآن مجید",
          //                   textAlign: TextAlign.center,
          //                   style: TextStyle(
          //                     fontSize: 45,
          //                    fontFamily: "quran", color: Colors.white
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: InkWell(
          //               onTap: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => Surah()));
          //               },
          //               child: Container(
          //                 height: 80,
          //                 width: 1500,
          //                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
          //                 child: Row(children: [
          //                   Image.asset(
          //                     "assets/images/star-removebg-preview.png",
          //                     height: 40,
          //                     width: 30,
          //                   ),
          //                   SizedBox(
          //                     child: Text(
          //                       textAlign: TextAlign.right,
          //                       quran.getSurahNameArabic(1),
          //                       style: TextStyle(
          //                         fontSize: 38,
          //                        fontFamily: "quran", color: Colors.white
          //                       ),
          //                     ),
          //                   ),
          //                 ]),
          //               ),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(8),
          //             child: InkWell(
          //               child: Container(
          //                 height: 80,
          //                 width: 1500,
          //                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
          //                 child: Row(children: [
          //                   Image.asset(
          //                     "assets/images/star-removebg-preview.png",
          //                     height: 40,
          //                     width: 30,
          //                   ),
          //                   SizedBox(
          //                     child: Text(
          //                       textAlign: TextAlign.right,
          //                       quran.getSurahNameArabic(2),
          //                       style: TextStyle(
          //                         fontSize: 38,
          //                        fontFamily: "quran", color: Colors.white
          //                       ),
          //                     ),
          //                   ),
          //                 ]),
          //               ),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(8),
          //             child: InkWell(
          //               onTap: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => (surrat())));
          //               },
          //               child: Container(
          //                 height: 80,
          //                 width: 1500,
          //                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
          //                 child: Row(children: [
          //                   Image.asset(
          //                     "assets/images/star-removebg-preview.png",
          //                     height: 40,
          //                     width: 30,
          //                   ),
          //                   SizedBox(
          //                     child: Text(
          //                       textAlign: TextAlign.right,
          //                       quran.getSurahNameArabic(3),
          //                       style: TextStyle(
          //                         fontSize: 38,
          //                        fontFamily: "quran", color: Colors.white
          //                       ),
          //                     ),
          //                   ),
          //                 ]),
          //               ),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(8),
          //             child: InkWell(
          //               child: Container(
          //                 height: 80,
          //                 width: 1500,
          //                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
          //                 child: Row(children: [
          //                   Image.asset(
          //                     "assets/images/star-removebg-preview.png",
          //                     height: 40,
          //                     width: 30,
          //                   ),
          //                   SizedBox(
          //                     child: Text(
          //                       textAlign: TextAlign.right,
          //                       quran.getSurahNameArabic(4),
          //                       style: TextStyle(
          //                         fontSize: 38,
          //                        fontFamily: "quran", color: Colors.white
          //                       ),
          //                     ),
          //                   ),
          //                 ]),
          //               ),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(8),
          //             child: Container(
          //               height: 80,
          //               width: 1500,
          //               color:     Color.alphaBlend(Colors.brown, Colors.transparent),
          //               child: Row(children: [
          //                 Image.asset(
          //                   "assets/images/star-removebg-preview.png",
          //                   height: 40,
          //                   width: 30,
          //                 ),
          //                 SizedBox(
          //                   child: Text(
          //                     textAlign: TextAlign.right,
          //                     quran.getSurahNameArabic(5),
          //                     style: TextStyle(
          //                       fontSize: 38,
          //                      fontFamily: "quran", color: Colors.white
          //                     ),
          //                   ),
          //                 ),
          //               ]),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(8),
          //             child: Container(
          //               height: 80,
          //               width: 1500,
          //               color:     Color.alphaBlend(Colors.brown, Colors.transparent),
          //               child: Row(children: [
          //                 Image.asset(
          //                   "assets/images/star-removebg-preview.png",
          //                   height: 40,
          //                   width: 30,
          //                 ),
          //                 SizedBox(
          //                   child: Text(
          //                     textAlign: TextAlign.right,
          //                     quran.getSurahNameArabic(6),
          //                     style: TextStyle(
          //                       fontSize: 38,
          //                      fontFamily: "quran", color: Colors.white
          //                     ),
          //                   ),
          //                 ),
          //               ]),
          //             ),
          //           ),
          //         ],
          //       ),
          //     )),
          //   ],

          // ),



//  Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 100,
//               width: 1500,
//               color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//               child: SizedBox(
//                 child: Text(
//                   "قرآن مجید",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 45,
//                    fontFamily: "quran", color: Colors.white
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Surah()));
//               },
//               child: Container(
//                 height: 80,
//                 width: 1500,
//                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                 child: Row(children: [
//                   Image.asset(
//                     "assets/images/star-removebg-preview.png",
//                     height: 40,
//                     width: 30,
//                   ),
//                   SizedBox(
//                     child: Text(
//                       textAlign: TextAlign.right,
//                       quran.getSurahNameArabic(1),
//                       style: TextStyle(
//                         fontSize: 38,
//                        fontFamily: "quran", color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ]),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: InkWell(
//               child: Container(
//                 height: 80,
//                 width: 1500,
//                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                 child: Row(children: [
//                   Image.asset(
//                     "assets/images/star-removebg-preview.png",
//                     height: 40,
//                     width: 30,
//                   ),
//                   SizedBox(
//                     child: Text(
//                       textAlign: TextAlign.right,
//                       quran.getSurahNameArabic(2),
//                       style: TextStyle(
//                         fontSize: 38,
//                        fontFamily: "quran", color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ]),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => (surrat())));
//               },
//               child: Container(
//                 height: 80,
//                 width: 1500,
//                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                 child: Row(children: [
//                   Image.asset(
//                     "assets/images/star-removebg-preview.png",
//                     height: 40,
//                     width: 30,
//                   ),
//                   SizedBox(
//                     child: Text(
//                       textAlign: TextAlign.right,
//                       quran.getSurahNameArabic(3),
//                       style: TextStyle(
//                         fontSize: 38,
//                        fontFamily: "quran", color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ]),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: InkWell(
//               child: Container(
//                 height: 80,
//                 width: 1500,
//                 color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                 child: Row(children: [
//                   Image.asset(
//                     "assets/images/star-removebg-preview.png",
//                     height: 40,
//                     width: 30,
//                   ),
//                   SizedBox(
//                     child: Text(
//                       textAlign: TextAlign.right,
//                       quran.getSurahNameArabic(4),
//                       style: TextStyle(
//                         fontSize: 38,
//                        fontFamily: "quran", color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ]),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: Container(
//               height: 80,
//               width: 1500,
//               color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//               child: Row(children: [
//                 Image.asset(
//                   "assets/images/star-removebg-preview.png",
//                   height: 40,
//                   width: 30,
//                 ),
//                 SizedBox(
//                   child: Text(
//                     textAlign: TextAlign.right,
//                     quran.getSurahNameArabic(5),
//                     style: TextStyle(
//                       fontSize: 38,
//                      fontFamily: "quran", color: Colors.white
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: Container(
//               height: 80,
//               width: 1500,
//               color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//               child: Row(children: [
//                 Image.asset(
//                   "assets/images/star-removebg-preview.png",
//                   height: 40,
//                   width: 30,
//                 ),
//                 SizedBox(
//                   child: Text(
//                     textAlign: TextAlign.right,
//                     quran.getSurahNameArabic(6),
//                     style: TextStyle(
//                       fontSize: 38,
//                      fontFamily: "quran", color: Colors.white
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//           ),

//  return Scaffold(
//     body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 100,
//                   width: 1500,
//                   color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                   child: SizedBox(
//                     child: Text(
//                       "قرآن مجید",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 45,
//                        fontFamily: "quran", color: Colors.white
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Surah()));
//                   },
//                   child: Container(
//                     height: 80,
//                     width: 1500,
//                     color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                     child: Row(children: [
//                       Image.asset(
//                         "assets/images/star-removebg-preview.png",
//                         height: 40,
//                         width: 30,
//                       ),
//                       SizedBox(
//                         child: Text(
//                           textAlign: TextAlign.right,
//                           quran.getSurahNameArabic(1),
//                           style: TextStyle(
//                             fontSize: 38,
//                            fontFamily: "quran", color: Colors.white
//                           ),
//                         ),
//                       ),
//                     ]),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: InkWell(
//                   child: Container(
//                     height: 80,
//                     width: 1500,
//                     color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                     child: Row(children: [
//                       Image.asset(
//                         "assets/images/star-removebg-preview.png",
//                         height: 40,
//                         width: 30,
//                       ),
//                       SizedBox(
//                         child: Text(
//                           textAlign: TextAlign.right,
//                           quran.getSurahNameArabic(2),
//                           style: TextStyle(
//                             fontSize: 38,
//                            fontFamily: "quran", color: Colors.white
//                           ),
//                         ),
//                       ),
//                     ]),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => (surrat())));
//                   },
//                   child: Container(
//                     height: 80,
//                     width: 1500,
//                     color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                     child: Row(children: [
//                       Image.asset(
//                         "assets/images/star-removebg-preview.png",
//                         height: 40,
//                         width: 30,
//                       ),
//                       SizedBox(
//                         child: Text(
//                           textAlign: TextAlign.right,
//                           quran.getSurahNameArabic(3),
//                           style: TextStyle(
//                             fontSize: 38,
//                            fontFamily: "quran", color: Colors.white
//                           ),
//                         ),
//                       ),
//                     ]),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: InkWell(
//                   child: Container(
//                     height: 80,
//                     width: 1500,
//                     color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                     child: Row(children: [
//                       Image.asset(
//                         "assets/images/star-removebg-preview.png",
//                         height: 40,
//                         width: 30,
//                       ),
//                       SizedBox(
//                         child: Text(
//                           textAlign: TextAlign.right,
//                           quran.getSurahNameArabic(4),
//                           style: TextStyle(
//                             fontSize: 38,
//                            fontFamily: "quran", color: Colors.white
//                           ),
//                         ),
//                       ),
//                     ]),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: Container(
//                   height: 80,
//                   width: 1500,
//                   color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                   child: Row(children: [
//                     Image.asset(
//                       "assets/images/star-removebg-preview.png",
//                       height: 40,
//                       width: 30,
//                     ),
//                     SizedBox(
//                       child: Text(
//                         textAlign: TextAlign.right,
//                         quran.getSurahNameArabic(5),
//                         style: TextStyle(
//                           fontSize: 38,
//                          fontFamily: "quran", color: Colors.white
//                         ),
//                       ),
//                     ),
//                   ]),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: Container(
//                   height: 80,
//                   width: 1500,
//                   color:     Color.alphaBlend(Colors.brown, Colors.transparent),
//                   child: Row(children: [
//                     Image.asset(
//                       "assets/images/star-removebg-preview.png",
//                       height: 40,
//                       width: 30,
//                     ),
//                     SizedBox(
//                       child: Text(
//                         textAlign: TextAlign.right,
//                         quran.getSurahNameArabic(6),
//                         style: TextStyle(
//                           fontSize: 38,
//                          fontFamily: "quran", color: Colors.white
//                         ),
//                       ),
//                     ),
//                   ]),
//                 ),
//               ),
//             ],
//           ),
//         )),
//     //main col
//   );

