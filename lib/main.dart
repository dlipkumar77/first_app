import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 12, 0, 40),
            title: Text('First App',
                style: TextStyle(fontSize: 24, color: Colors.white))),
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 7, 98),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
            child: Text('Hello world!',
                style: TextStyle(fontSize: 28, color: Colors.white))));
  }
}
