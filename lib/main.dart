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

  void diceRandom(){
    setState(() {
//      leftDiceNumber = Random().nextInt(6);
//      rightDiceNumber = Random().nextInt(6);
    });
  }
  Random leftRandom;
  int min = 1;
  int max = 7;
  Random rightRandom;
  int leftMin = 1;
  int rightMax = 7;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = leftMin + rightRandom.nextInt(rightMax - leftMin);
                      leftDiceNumber = min + leftRandom.nextInt(max - min);
                      print("Left $leftDiceNumber is in the range of $min and $max");
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = min + leftRandom.nextInt(max - min);
                      rightDiceNumber = leftMin + rightRandom.nextInt(rightMax - leftMin);
                      print("Right: $rightDiceNumber is in the range of $leftMin and $rightMax");
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = 6;
                      print('dice number = $rightDiceNumber');
                      rightRandom = new Random();
                      leftDiceNumber = min + leftRandom.nextInt(max - min);
                      rightDiceNumber = leftMin + rightRandom.nextInt(rightMax - leftMin);
                      print("Right: $rightDiceNumber is in the range of $leftMin and $rightMax");
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),

          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = 6;
                  print('dice number = $rightDiceNumber');
                  rightRandom = new Random();
                  leftDiceNumber = min + leftRandom.nextInt(max - min);
                  rightDiceNumber = leftMin + rightRandom.nextInt(rightMax - leftMin);
                  print("Right: $rightDiceNumber is in the range of $leftMin and $rightMax");
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

