import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNum1 = 1;
  int diceNum2 = 1;

  void changeDice() {
    setState(() {
      diceNum1 = Random().nextInt(6) + 1;
      diceNum2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
                print('left button pressed!');
              },
              child: Image.asset('images/dice$diceNum1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
                print('right button pressed!');
              },
              child: Image.asset('images/dice$diceNum2.png'),
            ),
          )
        ],
      ),
    );
  }
}
