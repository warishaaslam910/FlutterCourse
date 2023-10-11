import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var emailcontroller = TextEditingController(); //values for form
  var passcontroller = TextEditingController();
  var taskbox = Hive.box("taskbox"); //taskbox=model
  List<Map<String, dynamic>> alldata = []; //list to read data
  createdata(Map<String, dynamic> data) async {
    await taskbox.add(data); //add the data parameter value in taskbox
  }

  readdata() async {
    var data = taskbox.keys.map((index) {
      final items = taskbox
          .get(index); //get all the values using index one by one to read thaem

      return {"key": index, "email": items["email"], "pass": items["pass"]};
    }).toList(); //taskbox.keys.map().toList();
    setState(() {
      alldata = data.reversed.toList();
      print(alldata);
      print(alldata.length);
    });
  }

  deletedata(int? key) async {
    //key=null or key ="value to be deleted"

    await taskbox.delete(key);
  }

  showform(
      context, int? key) async //conditional method to show data of showmodel
  {
    if (key != null) {
      final items = alldata.firstWhere((element) => element["key"] == key);
      emailcontroller.text = items["email"]; //items=above variable
      passcontroller.text = items["pass"];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                32, 32, 32, MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(hintText: "Enter Your Title "),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passcontroller,
                  decoration:
                      InputDecoration(hintText: "Enter Your Description"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      var data = {
                        "email": emailcontroller.text,
                        "desc": passcontroller.text,
                      };

                      if (key == null) {
                        createdata(data);
                      } else {}
                      Navigator.pop(context);
                    },
                    child: key == null ? Text("Add Text") : Text("Update")),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }

// showModalBottomSheet
// (
//   context:context,
//   builder:(context)
//   {
//     return Padding(padding: EdgeInsets.fromLTRB(32, 32, 32, MediaQuery.of(context).viewInsets.bottom),
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         TextField(
//           controller: emailcontroller,
//   decoration: InputDecoration(hintText: "Enter Your Description"),

//         ),
//            SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 controller: passcontroller,
//                 decoration: InputDecoration(hintText: "Enter Your Description"),
//               ),
//       ],
//     ),)
//   }

//),
        );
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showform(context, null);
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Hive Data Base"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            var currentitems = alldata[index];
            return ListTile(
              title: Text(currentitems["email"]),
              subtitle: Text(currentitems["password"]),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        showform(context, currentitems["key"]);
                      },
                      icon: Icon(Icons.edit_attributes_rounded)),
                  IconButton(
                      onPressed: () {
                        deletedata(currentitems["key"]);
                      },
                      icon: Icon(Icons.delete_forever_rounded))
                ],
              ),
            );
          },
          itemCount: alldata.length,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
