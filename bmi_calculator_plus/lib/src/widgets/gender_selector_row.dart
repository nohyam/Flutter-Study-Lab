import 'package:bmi_calculator/src/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/color_constants.dart';
import 'icon_content.dart';

enum Gender {
  male,
  female,
}

class GenderSelectorRow extends StatelessWidget {
  final Gender? selectedGender;
  final ValueChanged<Gender> onGenderSelected;

  const GenderSelectorRow({
    super.key,
    required this.selectedGender,
    required this.onGenderSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ReusableCard(
            onPressed: () {
              onGenderSelected(Gender.male);
            },
            boxColor: selectedGender == Gender.male
                ? kActiveCardColor
                : kInactiveCardColor,
            cardChild: IconContent(
              icon: FontAwesomeIcons.mars,
              label: "MALE",
            ),
            margin: selectedGender == Gender.male
                ? const EdgeInsets.all(10.0)
                : const EdgeInsets.all(15.0),
          ),
        ),
        Expanded(
          child: ReusableCard(
            onPressed: () {
              onGenderSelected(Gender.female);
            },
            boxColor: selectedGender == Gender.female
                ? kActiveCardColor
                : kInactiveCardColor,
            cardChild: IconContent(
              icon: FontAwesomeIcons.venus,
              label: "FEMALE",
            ),
            margin: selectedGender == Gender.female
                ? const EdgeInsets.all(10.0)
                : const EdgeInsets.all(15.0),
          ),
        ),
      ],
    );
  }
}
