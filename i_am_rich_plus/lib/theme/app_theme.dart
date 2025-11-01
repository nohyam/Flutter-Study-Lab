import 'package:flutter/material.dart';

class AppTheme {
  static final _appBar = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.blueGrey[900],
    foregroundColor: Colors.white,
  );

  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.light,
    ),
    appBarTheme: _appBar,
    scaffoldBackgroundColor: Colors.blueGrey[300],
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.dark,
    ),
    appBarTheme: _appBar,
    scaffoldBackgroundColor: Colors.blueGrey[800],
  );
}
