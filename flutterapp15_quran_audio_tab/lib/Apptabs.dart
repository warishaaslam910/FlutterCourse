import 'package:flutter/material.dart';


import 'package:flutterapp15_quran_audio_tab/Surahindex.dart';

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Surahindex()));
          }, child:Text('SURAH AUDIO') ,
          ),
           ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Surahindex()));
          }, child:Text('SURAH') ,
          ),
        ],
      ),
    );
  }
}