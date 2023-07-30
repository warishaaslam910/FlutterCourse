import 'package:flutter/material.dart';
import 'package:flutterapp13_bmi_calculatoranddrawer/Surahindex.dart';
import 'package:flutterapp13_bmi_calculatoranddrawer/Surahindex2.dart';

class Apptabs extends StatefulWidget {
  const Apptabs({super.key});

  @override
  State<Apptabs> createState() => _ApptabsState();
}

class _ApptabsState extends State<Apptabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Surahindex2()));
          }, child:Text('SURAH') ,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Surahindex()));
          }, child:Text('SURAH AUDIO') ,
          )

        ],
      ),
    );
  }
}