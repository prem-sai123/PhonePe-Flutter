import 'package:flutter/material.dart';

abstract class AppStyle {
  static final ThemeData customLightTheme = ThemeData(
    primarySwatch: Colors.deepPurple,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF6A1B9A),
      secondary: Color(0xFF6200EA),
      surface: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: Color(0xFFF5F5F5),
    fontFamily: 'OpenSans',
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF6A1B9A),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      toolbarTextStyle: TextStyle(color: Colors.white),
      titleTextStyle: TextStyle(
        fontFamily: 'OpenSans',
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
