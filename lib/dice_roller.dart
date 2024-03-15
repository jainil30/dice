import 'package:flutter/material.dart';
import 'dart:math';


var randomizer = Random();
class Dice extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DiceState();
  }

}

class _DiceState extends State<Dice>{
  int _currentState = 1;
  void rollDice(){

    setState(() {
       _currentState = randomizer.nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.2,
        title: Text("Dice App"),
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Image.asset(
                  "assets/images/dice-$_currentState.png"
              ),
              onTap: rollDice,
            )
          ],
        ),
      ),
    );
  }

}