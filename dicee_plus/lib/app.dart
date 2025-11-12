import 'package:dicee/screens/dice_screen.dart';
import 'package:dicee/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}
