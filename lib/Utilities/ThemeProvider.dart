import 'package:flutter/material.dart';

class MyThemes {
  static final primary = Colors.blue;
  static final primaryColor = Colors.blue.shade300;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    cardColor: Color(0xFF252525FF),
    primaryColorDark: Color(0xFF252525FF),
    iconTheme: IconThemeData(
        color: Colors.white,
    ),
    colorScheme: ColorScheme.dark(primary: primary),
    dividerColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFF252525FF),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFF7F8FDFF),
    primaryColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.orange
    ),
    colorScheme: ColorScheme.light(primary: primaryColor),
    dividerColor: Colors.black,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white,
    )
  );
}