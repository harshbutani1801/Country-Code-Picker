import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.white,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: GoogleFonts.montserrat().fontFamily,
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: GoogleFonts.montserrat().fontFamily,
          ),
        ),
      );

  static Color lmeetaColor = Color(0xffFEB100);
  static Color lmeetaGrey = Color(0xff7b7b7b);
  static Color lightGrey = Color(0xff808080);
  static Color hintGrey = Color(0xff969696);
  static Color darkGrey = Color(0xff232323);
  static Color lightGreen = Color(0xffe5ffe1);
  static Color chatBlue = Color(0xff0078ff);
  static Color darkBlue = Color(0xff2e3a59);
  static Color lightBlue = Color(0xffD3FEFF);
}
