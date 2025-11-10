import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}
