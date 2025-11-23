import 'package:bmi_calculator/src/widgets/reusable_card.dart';
import 'package:bmi_calculator/src/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/color_constants.dart';
import '../theme/text_theme.dart';

class WeightAndAgeRow extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onPressedMinus;
  final VoidCallback onPressedPlus;

  const WeightAndAgeRow({
    super.key,
    required this.label,
    required this.value,
    required this.onPressedMinus,
    required this.onPressedPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        boxColor: kActiveCardColor,
        cardChild: Column(
          children: [
            Text(
              label,
              style: textTheme.titleSmall,
            ),
            Text(
              value.toString(),
              style: textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(
                  icon: FontAwesomeIcons.minus,
                  onPressed: onPressedMinus,
                ),
                SizedBox(
                  width: 10.0,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: onPressedPlus,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
