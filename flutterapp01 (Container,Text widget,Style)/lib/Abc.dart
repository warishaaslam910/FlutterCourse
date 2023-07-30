import 'package:flutter/material.dart';
import 'Def.dart';
class Abc extends StatefulWidget {
  const Abc({super.key});

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        child: InkWell(
           child:Text("PAGE2"), 
  onTap: (){
Navigator.push(
  context, MaterialPageRoute(builder: (context)=> Def()));

  },
        ),      
         

       ),
    );
  }
}