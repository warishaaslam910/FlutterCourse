import 'package:flutter/material.dart';
TextStyle mytext1(){          //for headings
  return TextStyle(color:Colors.black ,fontWeight: FontWeight.w600,fontSize: 25 );
}
TextStyle mytext2({Color colortext = const Color.fromARGB(255, 54, 78, 212), FontWeight weighttext = FontWeight.bold})
{
return TextStyle(color :colortext ,fontSize: 20);
}
