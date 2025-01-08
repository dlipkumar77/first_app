//import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const starAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//var starAlignment = Alignment.topLeft;
//var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //const GradientContainer({Key? key}) : super(key: key);
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurpleAccent,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          /*
            colors: [
              //colors: const [
              // const keyword is before boxDecoration now colors because alignment is not const
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 7, 98),
            ],
            */
          begin: starAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

/*
//Type one color Added to GradientContainer

class GradientContainer extends StatelessWidget {
  //const GradientContainer({Key? key}) : super(key: key);
  const GradientContainer({super.key,required this.colors});
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          //decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            /*
            colors: [
              //colors: const [
              // const keyword is before boxDecoration now colors because alignment is not const
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 7, 98),
            ],
            */
            begin: starAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(child: StyledText('Hello world!')));
  }
}
*/
