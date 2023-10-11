import 'package:flutter/material.dart';

import 'chats.dart';

class tabs extends StatefulWidget {
  const tabs({super.key});

  @override
  State<tabs> createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MyBook"),
          backgroundColor: const Color.fromARGB(255, 7, 78, 136),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: ("Chats"),
              ),
              Tab(
                text: ("Calls"),
              ),
              Tab(
                text: ("Status"),
              ),
              Tab(
                text: ("Community"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            chats(),
          ],
        ),
      ),
    );
  }
}
