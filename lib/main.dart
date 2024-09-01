import 'package:flutter/material.dart';
import 'package:rolldice/gradientcontainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
         [
          Color.fromARGB(255, 53, 13, 122),
          Color.fromARGB(255, 85, 45, 193)
        ],
      ),
    ),
  ));
}
