import 'package:flutter/material.dart';

class Rippleanim extends StatefulWidget {
  const Rippleanim({super.key});

  @override
  State<Rippleanim> createState() => _RippleanimState();
}

class _RippleanimState extends State<Rippleanim>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
    super.initState();
  }

  var listsizes = [100.0, 150.0, 200.0, 250.0, 300.0];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(alignment: Alignment.center, children: [

         Imagecust(listsizes[0]),
         Imagecust(listsizes[1]),
         Imagecust(listsizes[2]),
         Imagecust(listsizes[3]),
         Imagecust(listsizes[4]),
         Image.asset("assets/images/media_social_whatsapp_icon_124250.png",width: 60,height: 60,fit: BoxFit.fill,)

      ]),
    );
  }

  Widget Imagecust(s) {
    return Container(
      width: s * animationController.value,
      height: s * animationController.value,
   
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green.withOpacity(1.0 - animationController.value),
      ),
    );
  }
}
