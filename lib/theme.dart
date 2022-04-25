import 'dart:ui';

import 'package:flutter/material.dart';

Color darkColor = Color(0xff132028);
Color blueColor = Color(0xff2D87E8);
Color whiteColor = Color(0xffffffff);
Color greyColor = Color(0xff858496);

FontWeight textBold = FontWeight.w600;
FontWeight textRegular = FontWeight.w400;
FontWeight textLight = FontWeight.w300;

double textLg = 20;
double textMd = 16;
double textSm = 14;

// Bold Font
TextStyle textStyle (Color clr, double fs, FontWeight fw ) {
  return TextStyle(
    fontSize: fs,
      fontWeight: fw,
      color: clr
  );
}