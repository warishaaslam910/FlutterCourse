import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/quran.dart' as quran;

// ignore: must_be_immutable
class Surahaudi extends StatefulWidget {

  int indexsurah;
  Surahaudi(this.indexsurah, {super.key});
  

  
  @override
  State<Surahaudi> createState() => _SurahaudiState();
}
 

class _SurahaudiState extends State<Surahaudi> {
   AudioPlayer audioPlayer = AudioPlayer();
  IconData playpauseButton = Icons.play_circle_fill_rounded;
  bool isplaying = true;

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
  Future<void> togglebutton() async {
    try {
      final audiourl = await quran.getAudioURLBySurah(widget.indexsurah + 1);
      print(audiourl);
      audioPlayer.setUrl(audiourl);

      // if isplaying == true
      if (isplaying) {
        audioPlayer.play();

        setState(() {
          playpauseButton = Icons.pause_circle_rounded;
          isplaying = false;
        });
      } else {
        audioPlayer.pause();
        setState(() {
          playpauseButton = Icons.play_circle_fill_rounded;
          isplaying = true;
        });
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 99, 69),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 87, 74),
        title: Text(quran.getSurahNameArabic(widget.indexsurah + 1,)),
      ),
      body:

    Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0,80,0,20),
        child: Column(
            children: [

              Center(
                child: Container(
                  height: 60,
                  width: 500,
                  child:ListTile(
                    title: Text(quran.getSurahName(widget.indexsurah + 1,),style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold) ),
                    subtitle:Card(
                    
                        elevation: 6,
                        shadowColor: Colors.brown[900],
                        child: Center(
                          child: IconButton(
                              icon: Icon(
                                playpauseButton,
                                color: Colors.brown[900],
                              ),
                              onPressed: togglebutton),
                        ),
                           ), 
                  ),
                   
                ),
              ),
            ],
          ),
      ),
    ),
       
    );
  }
}