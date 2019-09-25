import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Roll the dice'),
          centerTitle: true,
          backgroundColor: Colors.orange,
          elevation: 3.0,
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
  int leftDiceNumber = 1;
  int rightDiceNumber =6;

  Random numRandom;
  int min = 1;
  int max = 7;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: null,
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: null,
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              setState(() {
                numRandom = new Random();
                leftDiceNumber = min + numRandom.nextInt(max - min);
                rightDiceNumber = min + numRandom.nextInt(max - min);
                print("Left: $leftDiceNumber");
                print("Right: $rightDiceNumber");
                print("---------------");
              });

              int newLeftDiceNumber = leftDiceNumber;
              int newRightDiceNumber = rightDiceNumber;

              if ((newLeftDiceNumber == rightDiceNumber) || (newRightDiceNumber == rightDiceNumber)) {
                numRandom = new Random();
                leftDiceNumber = min + numRandom.nextInt(max - min);
                rightDiceNumber = min + numRandom.nextInt(max - min);
                print("Left: $leftDiceNumber");
                print("Right: $rightDiceNumber");
                print("---------------");
                print("---------------");
              } else if (newRightDiceNumber == rightDiceNumber){
              }
            },
            child: const Text(
                'Roll the dice',
                style: TextStyle(fontSize: 35)
            ),
          ),
        ],
      ),
    );
  }
}

