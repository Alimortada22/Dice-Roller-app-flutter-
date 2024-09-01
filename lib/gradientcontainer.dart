
import 'package:flutter/material.dart';
import 'package:rolldice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
    const GradientContainer(this.gradientcolor, {super.key});
  final List<Color> gradientcolor;
  final gradientstart = Alignment.topLeft;
  final gradientend = Alignment.bottomRight;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: gradientcolor, begin: gradientstart, end: gradientend)),
      child: const Center(
          child: DiceRoller(),
    ),);
  }
}
