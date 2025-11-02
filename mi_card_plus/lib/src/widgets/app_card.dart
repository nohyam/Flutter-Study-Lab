import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'SourceSans3',
            fontSize: 20.0,
            color: Colors.teal[900],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
