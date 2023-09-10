import 'package:flutter/material.dart';
import 'package:flutterapp23sqldatabase_crud_app_ui/Services/Db_helper.dart';

class Update extends StatefulWidget {
  // const Update({super.key, required this.name});
  const Update({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  var newname = TextEditingController();

  // List<Map<String, dynamic>> updatedlist = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 25, 8, 0),
            child: TextField(
              controller: newname,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              // Update the name in the database
              String name = newname.text.toString();
              await Db_helper.instance.updateRecord({
                Db_helper.dt_name: name,
              });
              setState(() {});
              // Navigate back and pass a result value
              Navigator.pop(context, true);
            },
            child: Text("Update"),
          )
        ],
      ),
    );
  }
}
