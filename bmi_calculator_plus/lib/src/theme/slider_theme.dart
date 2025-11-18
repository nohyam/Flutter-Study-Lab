import 'package:flutter/material.dart';

SliderThemeData buildSliderTheme(SliderThemeData base) {
  return base.copyWith(
    thumbColor: const Color(0xFFEB1555),
    overlayColor: const Color(0x29EB1555),
    activeTrackColor: Colors.white,
    inactiveTickMarkColor: const Color(0xFF8D8E98),
    thumbShape: const RoundSliderThumbShape(
      enabledThumbRadius: 15.0,
    ),
    overlayShape: const RoundSliderOverlayShape(
      overlayRadius: 29.0,
    ),
  );
}
