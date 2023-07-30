import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   reload();
  // }

  // var wacontroller = TextEditingController();

  // var getres = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
            child: Image.asset(
              "assets/images/pic1.jpg",
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
            
            ),
          ),
          ElevatedButton(
              onPressed: () async {
              

                final SharedPreferences pref =
                    await SharedPreferences.getInstance();

                pref.setBool("name", true);
              },
              child: Text("Save")),

        ],
      ))),
    );
  }

//   void reload() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();

//     var getname = pref.getString("name");

//     // getres=getname!;
//     // getres=getname !=null ? getname :"value N/A";
//     getres = getname ?? "value n/a";

//     setState(() {});
//   }
 }
