import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF0A0E21),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
