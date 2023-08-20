import 'package:flutter/material.dart';
import 'package:flutterapp21_sqldatabase/Services/Db_operations.dart';

class DatabaseScreen extends StatefulWidget {
  const DatabaseScreen({super.key});

  @override
  State<DatabaseScreen> createState() => _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
              ElevatedButton(
                onPressed: () async {
                  await Db_operations.instance
                      .insertRecord({Db_operations.dt_email: "warishaaslam123@gmail.com"});
                },
                child: Text("Create")),
            ElevatedButton(
                onPressed: () async {
                  var query = await Db_operations.instance.queryDatabase();
                  print(query);
                },
                child: Text("Read")),
            ElevatedButton(
                onPressed: () async {
                  await Db_operations.instance.updateRecord({
                    Db_operations.dt_id: 2,
                    Db_operations.dt_email: "abc12@gmail.com",
                  });
                },
                child: Text("Update")),
            ElevatedButton(
                onPressed: () {
                  Db_operations.instance.deleteRecord(3);
                },
                child: Text("Delete")),
          ],
        ),
      ),
    );
  }
}