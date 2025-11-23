import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color boxColor;
  final Widget? cardChild;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;

  const ReusableCard({
    super.key,
    required this.boxColor,
    this.cardChild,
    this.onPressed,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        margin: margin ?? EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: boxColor,
        ),
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        child: cardChild,
      ),
    );
  }
}
