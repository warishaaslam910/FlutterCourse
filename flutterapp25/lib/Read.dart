import 'package:flutter/material.dart';

import 'Services/Db_helper.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  List<Map<String, dynamic>> datalist = [];

  void alldata() async {
    var data = await Db_helper.instance.queryDatabase();

    setState(() {
      datalist = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    alldata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              tileColor: Colors.indigo[900],
              textColor: Colors.white,
              title: Text("${datalist[index]["name"]}"),
            ),
          );
        },
        itemCount: datalist.length,
      ),
    );
  }
}
