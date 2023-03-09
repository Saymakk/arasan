import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  TextStyle hintTextStyle() {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xff8c8c8c));
  }

  TextStyle textTitleField() {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff1e1e1e));
  }

  TextStyle titleTextStyle() {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xff1e1e1e));
  }

  TextStyle titleWithCustomStyle(
      dynamic fontWeight, double fontSize, Color textColor) {
    return GoogleFonts.roboto(
        fontWeight: fontWeight, fontSize: fontSize, color: textColor);
  }

  TextStyle buttonFilledTextStyle() {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xffffffff));
  }

  TextStyle cardTitleText() {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xff8c8c8c));
  }

  TextStyle listtileTitleText() {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xff1E1E1E));
  }

  TextStyle buttonUnfilledTextStyle() {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xff953E37));
  }

  BottomNavigationBarThemeData bottomNavigationBarThemeData =
      BottomNavigationBarThemeData(
    backgroundColor: Color(0xffffffff),
    selectedIconTheme: IconThemeData(size: 22, color: Color(0xff953e37)),
    unselectedIconTheme: IconThemeData(size: 22, color: Color(0xff595959)),
    selectedLabelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
    unselectedLabelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
  );
}
