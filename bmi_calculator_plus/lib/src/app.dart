import 'package:flutter/material.dart';

import 'screens/input_page.dart';
import 'theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: InputPage(),
    );
  }
}
