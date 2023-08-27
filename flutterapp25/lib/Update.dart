import 'package:flutter/material.dart';
import 'package:flutterapp23sqldatabase_crud_app_ui/Services/Db_helper.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  var name = TextEditingController();
  var id;
  List<Map<String, dynamic>> updatedlist = [];
  void up_data() async {
    var newdata =
        await Db_helper.instance.updateRecord({Db_helper.db_name: name});

    setState(() {
      up_data();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
