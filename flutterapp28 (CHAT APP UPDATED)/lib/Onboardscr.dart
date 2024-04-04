import 'package:flutter/material.dart';

import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:flutterapp28/Pages1.dart';

class Onboardscr extends StatefulWidget {
  Onboardscr({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _OnboardscrState createState() => _OnboardscrState();
}

class _OnboardscrState extends State<Onboardscr> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        allowScroll: true,
        pages: pages,
        showBullets: true,
        inactiveBulletColor: Colors.blue,
        // backgroundProvider: NetworkImage('https://picsum.photos/720/1280'),
        skipCallback: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pages1()));
        },
        finishCallback: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Finish clicked"),
          ));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pages1()));
        },
      ),
    );
  }

  final pages = [
    PageModel(
      color: const Color(0xFF536DFE),
      //color: Color.fromARGB(255, 12, 51, 119),
      // color: const Color(0xFF9B90BC),

      imageAssetPath: 'assets/images/clipart41.png',
      title: 'Plan Meetups',
      body: 'Share your ideas with the team',
      doAnimateImage: true,
    ),

    PageModel(
        color: const Color(0xFF536DFE),
        // color:Color.fromARGB(255, 12, 51, 119),
        // color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/images/clipart1.png',
        body: 'Plan your day and see the increase in productivity',
        title: 'Plan your tasks',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF536DFE),
        // color: Color.fromARGB(255, 12, 51, 119),
        // color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/images/clipart2.png',
        title: 'Chat and message',
        body: 'Connect with the people from different places',
        doAnimateImage: true),
    // PageModel.withChild(
    //     child: Padding(
    //       padding: EdgeInsets.only(bottom: 25.0),
    //       child: Image.asset('assets/images/clipart3.png',
    //           width: 300.0, height: 300.0),
    //     ),
    //     color: const Color(0xFF5886d6),
    //     doAnimateChild: true)
  ];
}