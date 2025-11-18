import 'package:bmi_calculator/src/domain/calculator_brain.dart';
import 'package:bmi_calculator/src/screens/result_page.dart';
import 'package:bmi_calculator/src/widgets/gender_selector_row.dart';
import 'package:bmi_calculator/src/widgets/height_selector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/color_constants.dart';
import '../theme/text_theme.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';
import '../widgets/round_icon_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 175;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GenderSelectorRow(
              selectedGender: selectedGender,
              onGenderSelected: (Gender newGender) {
                setState(() {
                  selectedGender = newGender;
                });
              },
            ),
          ),
          Expanded(
            child: HeightSelector(
              height: height,
              onHeightChanged: (newHeight) {
                setState(() {
                  height = newHeight;
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    boxColor: kActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'WEIGHT',
                          style: textTheme.titleSmall,
                        ),
                        Text(
                          weight.toString(),
                          style: textTheme.headlineMedium,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    boxColor: kActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'AGE',
                          style: textTheme.titleSmall,
                        ),
                        Text(
                          age.toString(),
                          style: textTheme.headlineMedium,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(
                weight: weight,
                height: height,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    resultText: calc.getResult(),
                    bmiResult: calc.calculateBMI(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            buttonTitle: 'CALCULATOR',
          ),
        ],
      ),
    );
  }
}
