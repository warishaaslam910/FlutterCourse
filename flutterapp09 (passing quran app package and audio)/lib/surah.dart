import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:just_audio/just_audio.dart';
class surah extends StatefulWidget {
  
   int surah_ind;
   surah(this.surah_ind,{super.key});
  @override
  State<surah> createState() => _surahState();
}
 
class _surahState extends State<surah> {
 bool isplaying=true;
 AudioPlayer audioplayer=AudioPlayer();
 IconData playpausebutton=Icons.play_circle_fill_rounded;
  @override
  void dispose()
  {
    audioplayer.dispose();
    super.dispose();
  }
  Future <void> togglebutton() async{

try{
final audiourl = await quran.getAudioURLBySurah(widget.surah_ind + 1);
      print(audiourl);
      audioplayer.setUrl(audiourl);
if(isplaying=true)
{
  audioplayer.play();
setState(() {
  playpausebutton=Icons.pause_circle_rounded;
  isplaying=false;
});
}
else{
  audioplayer.pause();
        setState(() {
          playpausebutton = Icons.play_circle_fill_rounded;
          isplaying = true;
        });
}

}
catch(e)
{
  print(e);
}
  }
  Widget build(BuildContext context) {
    return Scaffold(
    
 
      appBar: AppBar(
        title: Text(quran.getSurahName(widget.surah_ind + 1,)),
      ),
      body: SafeArea(
        
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
              
             children: [
          Expanded(child:
           ListView.builder(
              itemCount: quran.getVerseCount(widget.surah_ind),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      quran.getVerse(widget.surah_ind + 1, index+1,verseEndSymbol: false),
                      textAlign: TextAlign.right,
                    ),
                  ),
                );
                
              },
            ), ),
           
            Card(
                elevation: 6,
                shadowColor: Colors.brown[900],
                child: Center(
                  child: IconButton(
                      icon: Icon(
                        playpausebutton,
                        color: Colors.brown[900],
                      ),
                      onPressed: togglebutton),
                ),
              ),
          ],
          ),
         
        ),
      ),
    );
  }
}
