// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

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
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        // ignore: prefer_const_constructors
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
            child: FlatButton(
          onPressed: () {
            setState(() {
              rightDiceNumber = Random().nextInt(6) + 1;
            });
          },
          child: Image.asset('images/dice$rightDiceNumber.png'),
        ))
      ]),
    );
  }
}
