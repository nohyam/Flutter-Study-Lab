import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../theme/text_theme.dart';
import 'reusable_card.dart';

class HeightSelector extends StatelessWidget {
  final int height;
  final ValueChanged<int> onHeightChanged;

  const HeightSelector({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      boxColor: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: textTheme.titleSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toString(),
                style: textTheme.headlineMedium,
              ),
              Text(
                'cm',
                style: textTheme.titleSmall,
              ),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            onChanged: (double newValue) {
              onHeightChanged(newValue.round());
            },
          ),
        ],
      ),
    );
  }
}
