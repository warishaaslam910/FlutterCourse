import 'package:flutter/material.dart';
import 'package:flutterapp13_bmi_calculatoranddrawer/Apptabs.dart';
import 'package:flutterapp13_bmi_calculatoranddrawer/Bmicalculatr.dart';
import 'package:flutterapp13_bmi_calculatoranddrawer/Calculator.dart';
import 'package:flutterapp13_bmi_calculatoranddrawer/Todolist.dart';
class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Drawer(
  child: ListView(
children: [
  DrawerHeader(
    
    child: ClipOval(child:Container(
      width:5,
      height:5,
      child: Image.asset('assets/images/chaticon.png'),),
  ),),
  GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bmicalculator()));
    },
    child:ListTile(
      title:Text('bmicalculator'),

    ),
  ),
   GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator()));
    },
    child:ListTile(
      title:Text('Simple Calculator'),
      
    ),
  ),
   GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Todolist()));
    },
    child:ListTile(
      title:Text('ToDo List'),
      
    ),
  ),
 GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Apptabs()));
    },
    child:ListTile(
      title:Text('Quran App'),
      
    ),
  )
],
  ), 
 ),
    );
  }
}