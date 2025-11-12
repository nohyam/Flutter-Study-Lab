import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  List diceNumberList = List.filled(10, 0, growable: true);

  void randomDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      int score = leftDiceNumber + rightDiceNumber;

      pushAndDrop(diceNumberList, score);
    });
  }

  void pushAndDrop<T>(List<T> list, T value) {
    for (int i = list.length - 1; i > 0; i--) {
      list[i] = list[i - 1];
    }
    list[0] = value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Table(
            border: TableBorder.all(color: Colors.white),
            children: [
              TableRow(
                children: diceNumberList
                    .map(
                      (score) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        child: Center(
                          child: Text(
                            score.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/dice$leftDiceNumber.png',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/dice$rightDiceNumber.png',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              TextButton(
                onPressed: () {
                  randomDiceNumber();
                },
                child: Image.asset(
                  'assets/images/icons8-dice-96.png',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
