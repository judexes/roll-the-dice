import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Roll the dice'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
              child: Image.asset(
                'images/dice1.png',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
              child: Image.asset(
                'images/dice2.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
