import 'package:bmi_calculator/src/theme/slider_theme.dart';
import 'package:bmi_calculator/src/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'color_schemes.dart';

final ThemeData _base = ThemeData.dark();

final ThemeData appTheme = _base.copyWith(
  colorScheme: colorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
  ),
  textTheme: textTheme,
  sliderTheme: buildSliderTheme(_base.sliderTheme),
);
