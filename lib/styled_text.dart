import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Hello world!',
        style: TextStyle(fontSize: 28, color: Colors.white));
  }
}
