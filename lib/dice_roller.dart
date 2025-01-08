import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;

  //var diceRoll = Random().nextInt(6) + 1; //0-5 so +1
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // currentDiceRoll = Random().nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
    //print('changing image..');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //center Align otherwise its top
      children: [
        Image.asset(
          //activeDiceImage,
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            //padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
