import 'package:flutter/material.dart';

class gameStarted extends StatelessWidget {
  final bool hasGameStarted;

  gameStarted(this.hasGameStarted);
  @override
  Widget build(BuildContext context) {
    return hasGameStarted
        ? Container()
        : Container(alignment: Alignment(0, 0.2), child: Text("Tap to start"));
  }
}
