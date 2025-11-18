import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color boxColor;
  final Widget? cardChild;
  final Function()? onPressed;

  const ReusableCard({
    super.key,
    required this.boxColor,
    this.cardChild,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: boxColor,
          ),
          child: cardChild,
        ),
      ),
    );
  }
}
