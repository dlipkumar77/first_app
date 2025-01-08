import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const starAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//var starAlignment = Alignment.topLeft;
//var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //const GradientContainer({Key? key}) : super(key: key);
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          //decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              //colors: const [
              // const keyword is before boxDecoration now colors because alignment is not const
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 7, 98),
            ],
            begin: starAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(child: StyledText('Hello world!')));
  }
}
