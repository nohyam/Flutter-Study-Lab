import 'package:flutter/material.dart';

const _seedColor = Colors.red;

class AppTheme {
  static final _appBar = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    foregroundColor: Colors.white,
    backgroundColor: _seedColor,
  );

  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: _seedColor,
    appBarTheme: _appBar,
  );
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: _seedColor,
    appBarTheme: _appBar,
  );
}
