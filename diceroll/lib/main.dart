import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice Roll'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    void rollLeftDice() {
      leftDiceNumber = Random().nextInt(6) + 1;
    }

    void rollRightDice() {
      rightDiceNumber = Random().nextInt(6) + 1;
    }

    void rollBothDice() {
      rollLeftDice();
      rollRightDice();
      print('Both Dice Rolled');
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    rollLeftDice();
                    print('Left Button got pressed.');
                  });
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    rollRightDice();
                    print('Right Button got pressed.');
                  });
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    rollBothDice();
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
