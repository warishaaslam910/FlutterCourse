import 'package:flutter/material.dart';
import 'package:flutterapp22/Services/Db_helper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  body:Center(
    child:Row(
      children: [
        ElevatedButton(onPressed:() async{
           await Db_helper.instance
                      .insertRecord({Db_helper.dt_name: "Arsalan Shah"});
        }, child:Text("CREATE") ),
           ElevatedButton(onPressed:(){} , child:Text("UPDATE") ),
              ElevatedButton(onPressed:(){} , child:Text("READ") ),
                 ElevatedButton(onPressed:(){} , child:Text("DELETE") ),
      ],
    ),
  ),
),
    );
  }
}