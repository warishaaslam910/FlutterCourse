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
      
      
    );
  }
}