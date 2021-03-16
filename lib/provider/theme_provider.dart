import 'package:flutter/material.dart';

class ThemeProvider {
  bool _isDarkTheme;

  ThemeData get currentTheme =>
      _isDarkTheme ? ThemeProvider.darkTheme : ThemeProvider.lightTheme;

  ThemeProvider() {
    _isDarkTheme = true;
  }

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
  }

  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.amber,
        accentColor: Colors.red,
        scaffoldBackgroundColor: Colors.grey.shade300,
        fontFamily: 'Montserrat',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.yellow,
            primary: Colors.deepPurple,
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
          headline6: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              color: Colors.blueAccent),
          bodyText2: TextStyle(
              fontSize: 18.0, fontFamily: 'Hind', color: Colors.blueAccent),
          bodyText1: TextStyle(
              fontSize: 18.0, fontFamily: 'Hind', color: Colors.redAccent),
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        accentColor: Colors.red,
        scaffoldBackgroundColor: Colors.brown,
        fontFamily: 'Montserrat',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.yellow,
            primary: Colors.deepPurple,
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
          headline6: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              color: Colors.blueAccent),
          bodyText2: TextStyle(
              fontSize: 18.0, fontFamily: 'Hind', color: Colors.blueAccent),
          bodyText1: TextStyle(
              fontSize: 18.0, fontFamily: 'Hind', color: Colors.redAccent),
        ));
  }
}
