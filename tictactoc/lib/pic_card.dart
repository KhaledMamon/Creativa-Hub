import 'package:flutter/material.dart';
import 'package:tictactoc/game.dart';

class PickCard extends StatelessWidget {
  const PickCard({super.key, required this.symbol, required this.color});

  final String symbol;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameBoardScreen(chosenSymbol: symbol),
          ),
        );
      },
      child: Container(
        width: 115,
        height: 115,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            symbol,
            style: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.w900,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
