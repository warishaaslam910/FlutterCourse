import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//INTRODUCTION
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: (Text(
//               "my name is Warisha and I am currently pursuing a Bachelors of Science in Computer Science at Sir Syed University, Karachi. One of my favorite pastimes is reading, as it not only helps me to unwind after a long day of studying but also allows me to broaden my knowledge and perspective. As an avid reader, I enjoy exploring various genres, including fiction, non-fiction, and biographies, among others. I believe that reading is a great way to expand our minds and gain insights into the world around us.",
//               style: TextStyle(
//                   color: Color.alphaBlend(Colors.pink, Colors.white),
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold))),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Color.alphaBlend(Colors.yellow, Colors.white),

//             child: Text(
//                 "my name is Warisha and I am currently pursuing a Bachelors of Science in Computer Science at Sir Syed University, Karachi. One of my favorite pastimes is reading, as it not only helps me to unwind after a long day of studying but also allows me to broaden my knowledge and perspective. As an avid reader, I enjoy exploring various genres, including fiction, non-fiction, and biographies, among others. I believe that reading is a great way to expand our minds and gain insights into the world around us.",
//                 style: TextStyle(
//                     color: Color.alphaBlend(Colors.pink, Colors.white),
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold)),
//           ),
//         ),
//       ),
//     );
//   }
// }
//BUTTON:
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            TextButton(
              child: Text('ali'),
              onPressed: () {
                print("student");
              },
            ),
          ),
        ),
      ),
    );
  }
}
