import 'package:flutter/material.dart';

import 'Create.dart';
import 'Del.dart';
import 'Read.dart';
import 'Services/Db_helper.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Create(),
                      ));
                  // await Db_helper.instance
                  //     .insertRecord({Db_helper.dt_name: "Arsalan Shah"});
                },
                child: Text("Create")),

            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Read(),
                      ));

                  // var query = await Db_helper.instance.queryDatabase();
                  // print(query);
                },
                child: Text("Read")),

            // ElevatedButton(
            //     onPressed: () async {
            //       await Db_helper.instance.updateRecord({
            //         Db_helper.dt_id: 2,
            //         Db_helper.dt_name: "SMAS",
            //       });
            //     },
            //     child: Text("Update")),

            ElevatedButton(
                onPressed: () {
                  // for (int i = 1; i < 38; i++) {
                  //   Db_helper.instance.deleteRecord(i);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Del()));

                  // Db_helper.instance.deleteRecord(1);
                },
                child: Text('Delete')),
          ],
        ),
      ),
    );
  }
}
