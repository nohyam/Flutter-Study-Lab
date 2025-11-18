import 'package:bmi_calculator/src/constants/color_constants.dart';
import 'package:flutter/material.dart';

import '../theme/text_theme.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.resultText,
    required this.bmiResult,
    required this.interpretation,
  });

  final String resultText;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              boxColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: textTheme.headlineSmall,
                  ),
                  Text(
                    bmiResult,
                    style: textTheme.headlineLarge,
                  ),
                  Text(
                    interpretation,
                    style: textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATOR',
          ),
        ],
      ),
    );
  }
}
