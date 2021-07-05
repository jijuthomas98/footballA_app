import 'package:flutter/material.dart';

class PlayerLineUp extends StatelessWidget {
  const PlayerLineUp({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    required this.playerName,
  }) : super(key: key);
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final String playerName;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              child: Image.asset('assets/football-player.png'),
            ),
            Text(playerName),
          ],
        ),
      ),
    );
  }
}
