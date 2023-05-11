import 'package:flutter/material.dart';
import 'package:flutterapp03/surah.dart';
import 'package:quran/surah_data.dart';
import 'package:quran/quran.dart' as quran;
import 'package:flutter/widgets.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 1500,
                      color: Color.fromARGB(255, 240, 140, 94),
                      child: SizedBox(
                        child: Text(
                          "قرآن مجید",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 45,
                            fontFamily: "quran",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Surah()));
                      },
                      child: Container(
                        height: 80,
                        width: 1500,
                        color: Color.fromARGB(255, 240, 140, 94),
                        child: Row(children: [
                          Image.asset(
                            "assets/images/star-removebg-preview.png",
                            height: 40,
                            width: 30,
                          ),
                          SizedBox(
                            child: Text(
                              textAlign: TextAlign.right,
                              quran.getSurahNameArabic(1),
                              style: TextStyle(
                                fontSize: 38,
                                fontFamily: "quran",
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: InkWell(
                      child: Container(
                        height: 80,
                        width: 1500,
                        color: Color.fromARGB(255, 240, 140, 94),
                        child: Row(children: [
                          Image.asset(
                            "assets/images/star-removebg-preview.png",
                            height: 40,
                            width: 30,
                          ),
                          SizedBox(
                            child: Text(
                              textAlign: TextAlign.right,
                              quran.getSurahNameArabic(2),
                              style: TextStyle(
                                fontSize: 38,
                                fontFamily: "quran",
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 80,
                      width: 1500,
                      color: Color.fromARGB(255, 240, 140, 94),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/star-removebg-preview.png",
                          height: 40,
                          width: 30,
                        ),
                        SizedBox(
                          child: Text(
                            textAlign: TextAlign.right,
                            quran.getSurahNameArabic(3),
                            style: TextStyle(
                              fontSize: 38,
                              fontFamily: "quran",
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: InkWell(
                      child: Container(
                        height: 80,
                        width: 1500,
                        color: Color.fromARGB(255, 240, 140, 94),
                        child: Row(children: [
                          Image.asset(
                            "assets/images/star-removebg-preview.png",
                            height: 40,
                            width: 30,
                          ),
                          SizedBox(
                            child: Text(
                              textAlign: TextAlign.right,
                              quran.getSurahNameArabic(4),
                              style: TextStyle(
                                fontSize: 38,
                                fontFamily: "quran",
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 80,
                      width: 1500,
                      color: Color.fromARGB(255, 240, 140, 94),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/star-removebg-preview.png",
                          height: 40,
                          width: 30,
                        ),
                        SizedBox(
                          child: Text(
                            textAlign: TextAlign.right,
                            quran.getSurahNameArabic(5),
                            style: TextStyle(
                              fontSize: 38,
                              fontFamily: "quran",
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 80,
                      width: 1500,
                      color: Color.fromARGB(255, 240, 140, 94),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/star-removebg-preview.png",
                          height: 40,
                          width: 30,
                        ),
                        SizedBox(
                          child: Text(
                            textAlign: TextAlign.right,
                            quran.getSurahNameArabic(6),
                            style: TextStyle(
                              fontSize: 38,
                              fontFamily: "quran",
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), //main col
    );
  }
}


// return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//             child: Column(
//           children: [
//             // horizontal concept in first container of parent column
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.teal,
//                 height: 200,
//                 child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             color: Colors.yellow,
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             color: Colors.yellow,
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             color: Colors.yellow,
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             color: Colors.yellow,
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             color: Colors.yellow,
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             color: Colors.red,
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             color: Colors.blue,
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//                       ],
//                     )),
//               ),
//             ),

//             // ******************************** Ink well concept in second container ********************

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Surah()));
//                     print("yellow container clicked ");
//                   },
//                   child: Container(
//                     color: Colors.yellow,
//                     height: 100,
//                     width: 1200,
//                     child: SizedBox(
//                       child: Text("surah fatiha"),
//                     ),
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.blue,
//                 height: 100,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.black,
//                 height: 100,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.red,
//                 height: 100,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.brown,
//                 height: 100,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.orange,
//                 height: 100,
//               ),
//             ),
//           ],
//         )),
//       ),
//     );