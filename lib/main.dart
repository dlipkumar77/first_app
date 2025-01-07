import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(128, 48, 46, 200),
            title: Text('First App')),
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(child: Text('Hello world!')),
      ),
    ),
  );
}
