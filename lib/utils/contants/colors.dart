
import 'package:flutter/material.dart';

class SColors{
  SColors._();

  //App  Basic Color
  static const Color primaryColor  = Color(0xFF4B68FF);
  static const Color secondryColor  = Color(0xFFFFE24B);
  static const Color accent  = Color(0xFFb0c7ff);
  static const Color textcolor1  = Color(0xFF9FA0A6);
  static const Color textcolorsky  = Color(0xFF5BAEFF);
  static const Color brown_border  = Color(0xFFB9BDCB);
  static const Color todo_bg = Color(0xFFEDEEF2);
  // static const Color demmo  =  Colors.black


  //Gradient Color
  static const Gradient linearGradient = LinearGradient(begin:Alignment(0.0, 0.0),end:Alignment(0.707, -0.707),colors: [primaryColor,secondryColor,accent]);
}