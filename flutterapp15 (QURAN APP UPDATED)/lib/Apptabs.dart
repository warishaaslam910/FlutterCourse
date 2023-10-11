import 'package:flutter/material.dart';

import 'Surahindex.dart';
import 'Surahindex2.dart';

class Apptabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 104, 70, 58),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'SURAH',
              ),
              Tab(
                text: 'SURAH AUDIO',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Surahindex2(),
            Surahindex(),
          ],
        ),
      ),
    );
  }
}
