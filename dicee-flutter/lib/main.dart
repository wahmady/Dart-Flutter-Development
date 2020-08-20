import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}
//for the body you use dicepage() which you created the class already
//you can seemingly replace other parts with classes.
//big images will overflow, solve it by change property or use expanded widget(if row then expands out, if col expands up)
//this decides whats inside there, so we can work with this instead and plug it in after
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  var rand = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1, //ensures that this expanded widget will take 2s the space
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: FlatButton(
                onPressed:(){
                  print('left button');
                  setState(() {
                    leftDiceNumber = rand.nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: FlatButton(
                onPressed:(){
                  print('left button');
                  setState(() {
                    rightDiceNumber = rand.nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//expanded class will try to fill as much as its axis - row left and right and column up and down