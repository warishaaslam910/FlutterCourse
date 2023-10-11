import 'package:flutter/material.dart';

import 'Services/Db_helper.dart';
import 'Update.dart';

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

  void refreshdata() async {
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
              // trailing: GestureDetector(
              //   onTap: () {
              //     // Navigate to the update page
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) =>
              //               Update(name: datalist[index]["name"])),
              //     );
              //   },
              //   child: Icon(Icons.update),
              // ),
              trailing: GestureDetector(
                onTap: () async {
                  // Pass the selected name to the Update screen
                  bool flag = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Update(name: datalist[index]["name"])),
                  );
                  if (flag != null && flag) {
                    refreshdata();
                  }
                },
                child: Icon(Icons.update),
              ),
            ),
          );
        },
        itemCount: datalist.length,
      ),
    );
  }
}
