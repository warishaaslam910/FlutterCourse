import 'package:flutter/material.dart';
// import 'package:flutterapp09/surah.dart';
import 'package:flutterapp09/surahlist.dart';

// import 'package:quran/surah_data.dart';

void main() {
  runApp(MaterialApp(home:MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Surahlist();
  }
}