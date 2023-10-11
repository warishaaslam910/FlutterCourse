// import 'package:flutter/material.dart';
// import 'package:intro_screen_onboarding_flutter/intro_app.dart';

// import 'HomePage.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         // backgroundColor: Color.fromARGB(255, 36, 34, 34),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: TestScreen(),
//     );
//   }
// }

// class TestScreen extends StatelessWidget {
//   final List<Introduction> list = [
//     Introduction(
//       title: 'Buy & Sell',
//       subTitle: 'Browse the menu and order directly from the application',
//       imageUrl: 'assets/images/onboarding3.png',
//     ),
//     Introduction(
//       title: 'Delivery',
//       subTitle: 'Your order will be immediately collected and',
//       imageUrl: 'assets/images/onboarding4.png',
//     ),
//     Introduction(
//       title: 'Receive Money',
//       subTitle: 'Pick up delivery at your door and enjoy groceries',
//       imageUrl: 'assets/images/onboarding5.png',
//     ),
//     Introduction(
//       title: 'Finish',
//       subTitle: 'Browse the menu and order directly from the application',
//       imageUrl: 'assets/images/onboarding3.png',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return IntroScreenOnboarding(
//       introductionList: list,
//       onTapSkipButton: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => HomePage(),
//           ), //MaterialPageRoute
//         );
//       },
//       // foregroundColor: Colors.red,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

import 'HomePage.dart';

class Onboardscr extends StatefulWidget {
  const Onboardscr({super.key});

  @override
  State<Onboardscr> createState() => _OnboardscrState();
}

class _OnboardscrState extends State<Onboardscr> {
  final List<Introduction> list = [
    Introduction(
      title: 'Buy & Sell',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/onboarding3.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/images/onboarding4.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/images/onboarding5.png',
    ),
    Introduction(
      title: 'Finish',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/onboarding3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ), //MaterialPageRoute
        );
      },
      // foregroundColor: Colors.red,
    );
  }
}
