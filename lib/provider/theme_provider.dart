import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkTheme;

  ThemeData get currentTheme =>
      _isDarkTheme ? ThemeProvider.darkTheme : ThemeProvider.lightTheme;

  ThemeProvider() {
    _read();
  }

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    _save();
    notifyListeners();
  }

  void _save() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkTheme', _isDarkTheme);
  }

  void _read() async {
    final prefs = await SharedPreferences.getInstance();
    final _isDK = prefs.getBool("darkTheme") ?? false;
    if (_isDK != null) {
      _isDarkTheme = _isDK;
    } else {
      _isDarkTheme = true;
    }
    notifyListeners();
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
