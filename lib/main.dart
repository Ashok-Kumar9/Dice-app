import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('Dice')),
        ),
        body: DicePage(),
      ),
    ),
  );
}

/* function to generate the random values for left and right dices
int randomNumGenerator(int i){
  return Random().nextInt(6) + 1;
} */


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = Random().nextInt(6) + 1;
  int rightDiceButton = Random().nextInt(6) + 1;

// function to generate the random values for left and right dices
  void changeDiceNum(){
    leftDiceButton = Random().nextInt(6) + 1;
    rightDiceButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceNum();
                });
              },
              child: Image.asset('images/dice$leftDiceButton.png'),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceNum();
                });
              },
              child: Image.asset('images/dice$rightDiceButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
