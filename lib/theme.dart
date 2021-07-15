import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme() {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    accentColor: Color(0xff121212),
    canvasColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.white,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      bodyText2: TextStyle(color: Colors.white70, fontSize: 18),
    ),
  );
}
