import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  //const StyledText(String text,{super.key});
  //const StyledText(String text,{super.key}) : outputText = text;
  //String outputText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(fontSize: 28, color: Colors.white));
  }
}
