import 'package:flutter/material.dart';

class AppColors {
  static Color white = Colors.white;
  static Color purple = Color(0xff6200EE);
  static Color cyan = Color(0xff03DAC5);
  static Color red = Color(0xffF53558);
  static Color grey = Color(0xffE0E0E0);
  static Color blackerGrey = Color(0xff232323);
}

class AppUtiles {
  static Size getStringSize(String txt, TextStyle style) {
    var painter = TextPainter(
      text: TextSpan(text: txt, style: style),
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return painter.size;
  }
}
