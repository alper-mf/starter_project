import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey[300],

    appBarTheme: const AppBarTheme(
      // ignore: deprecated_member_use
      brightness: Brightness.light,
      // ignore: deprecated_member_use
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    // ignore: deprecated_member_use
    buttonColor: Colors.pink[400],
  );

  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey[800],
    appBarTheme: const AppBarTheme(
      // ignore: deprecated_member_use
      brightness: Brightness.dark,
      // ignore: deprecated_member_use
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    // ignore: deprecated_member_use
    buttonColor: Colors.green[400],
  );
}
