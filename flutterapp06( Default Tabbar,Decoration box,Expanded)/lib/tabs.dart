import 'package:flutter/material.dart';

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
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child:TabBar(
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: ("Contacts"),
                        ),
                        Tab(
                          text: ("Calls"),
                        ),
                        Tab(
                          text: ("Status"),
                        ),
                        Tab(
                          text: ("Streaks"),
                        ),
                        Tab(
                          text: ("Community"),
                        ),
                      ],
                    ),
                  )),
            )),
      ),
    );
  }
}
