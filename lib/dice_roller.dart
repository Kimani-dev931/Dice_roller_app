import 'package:flutter/material.dart';
import 'dart:math';

import 'gradient_container.dart';


class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRoller>{

  var dice_number = 1;


  void rollDice(){
    setState(() {
      dice_number =Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-images/dice-$dice_number.png',width: 200,),
        const SizedBox(height: 20,),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,textStyle: TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],);
  }
}