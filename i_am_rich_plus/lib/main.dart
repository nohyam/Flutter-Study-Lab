import 'package:flutter/material.dart';
import 'package:i_am_rich_plus/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: _themeMode,
      home: HomeScreen(
        isDark: _themeMode == ThemeMode.dark,
        onToggle: _toggleTheme,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.isDark,
    required this.onToggle,
  });

  final bool isDark;

  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I Am Rich Plus"),
        actions: <Widget>[
          IconButton(
            onPressed: onToggle,
            icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
          ),
        ],
      ),
      body: Center(
        child: Image.asset("images/diamond.png"),
      ),
    );
  }
}
