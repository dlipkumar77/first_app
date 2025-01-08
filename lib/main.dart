import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 12, 0, 40),
            title: Text('First App',
                style: TextStyle(fontSize: 24, color: Colors.white))),
        body: GradientContainer(const Color.fromARGB(255, 33, 5, 107),
            const Color.fromARGB(255, 68, 21, 147)),
      ),
    ),
  );
}
