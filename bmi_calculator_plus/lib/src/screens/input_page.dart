import 'package:bmi_calculator/src/domain/calculator_brain.dart';
import 'package:bmi_calculator/src/screens/result_page.dart';
import 'package:bmi_calculator/src/widgets/gender_selector_row.dart';
import 'package:bmi_calculator/src/widgets/height_selector.dart';
import 'package:bmi_calculator/src/widgets/weight_and_age.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_button.dart';

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
                WeightAndAgeRow(
                  label: 'WEIGHT',
                  value: weight,
                  onPressedMinus: () {
                    setState(() {
                      weight--;
                    });
                  },
                  onPressedPlus: () {
                    setState(() {
                      weight++;
                    });
                  },
                ),
                WeightAndAgeRow(
                  label: 'AGE',
                  value: age,
                  onPressedMinus: () {
                    setState(() {
                      age--;
                    });
                  },
                  onPressedPlus: () {
                    setState(() {
                      age++;
                    });
                  },
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
