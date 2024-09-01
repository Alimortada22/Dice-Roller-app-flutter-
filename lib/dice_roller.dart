import 'package:flutter/material.dart';
import 'dart:math';
var randeriz=Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
    var currentdiceroll=2;
 
  void rolldice() {
    setState(() {
       currentdiceroll=randeriz.nextInt(6)+1;
    });
   
   
  }
  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/$currentdiceroll-roll.jpg'),
          TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  textStyle: const TextStyle(fontSize: 28),
                  foregroundColor: Colors.white,
                  ),
              child: const Text(
                "RollDice",
              ))
        ],
      );
  }
}