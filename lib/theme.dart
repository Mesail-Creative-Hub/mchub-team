import 'dart:ui';

import 'package:flutter/material.dart';

Color darkColor = const Color(0xff132028);
Color blueColor = const Color(0xff2D87E8);
Color whiteColor = const Color(0xffffffff);
Color greyColor = const Color(0xff858496);

FontWeight textBold = FontWeight.w600;
FontWeight textRegular = FontWeight.w400;
FontWeight textLight = FontWeight.w300;

double textLg = 20;
double textMd = 16;
double textSm = 14;

// Bold Font
TextStyle textStyle(Color clr, double fs, FontWeight fw,
    [double spacing = .5]) {
  return TextStyle(
      fontSize: fs, fontWeight: fw, color: clr, letterSpacing: spacing);
}
