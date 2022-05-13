import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: dicepage1(),
      ),
    ),
  );
}

class dicepage1 extends StatefulWidget {
  const dicepage1({Key? key}) : super(key: key);

  @override
  State<dicepage1> createState() => _dicepage1State();
}

class _dicepage1State extends State<dicepage1> {
  int leftnumber = 1;
  int rightnumber = 2;
  void update() {
    leftnumber = Random().nextInt(6) + 1;
    rightnumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 5,ratio
            child: TextButton(
              child: Image.asset('images/dice$leftnumber.png'),
              onPressed: () {
                setState(() {
                  update();
                });
                print("left button clicked");
              },
            ),
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  update();
                });
                print('right button clicked');
              },
              child: Image(
                image: AssetImage('images/dice$rightnumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftnumber = 5;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 5,ratio
            child: TextButton(
              child: Image.asset('images/dice$leftnumber.png'),
              onPressed: () {
                print("left button clicked");
              },
            ),
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                print('right button clicked');
              },
              child: Image(
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
