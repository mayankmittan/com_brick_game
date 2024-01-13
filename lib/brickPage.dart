import 'dart:async';

import 'package:brick_game/gameStarted.dart';
import 'package:flutter/material.dart';

class brickPage extends StatefulWidget {
  brickPage({Key? key}) : super(key: key);
  @override
  _brickState createState() => _brickState();
}

class _brickState extends State<brickPage> {
  double ballX = 0;
  double ballY = 0;
  //bool hasGameStarted = false;

  void startGame() {
    print('game started');
    Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        ballY += 0.1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: startGame,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 143, 141, 228),
        body: Center(
          child: Stack(
            children: [
              Container(
                //alignment: Alignment(ballX, ballY),
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 73, 72, 153)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
