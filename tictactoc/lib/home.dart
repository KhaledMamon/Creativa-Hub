
import 'package:flutter/material.dart';
import 'package:tictactoc/pic_card.dart';

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    // return GameBoardScreen(chosenSymbol: 'X');
    return StartScreen();
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE2AE1C), Color(0xFFE64A19), Color(0xFFE50914)],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 80,
                left: -35,
                child: Text(
                  'X',
                  style: TextStyle(
                    fontSize: 240,
                    fontWeight: FontWeight.w900,
                    color: Colors.white.withAlpha(20),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                right: -25,
                child: Text(
                  'O',
                  style: TextStyle(
                    fontSize: 220,
                    fontWeight: FontWeight.w900,
                    color: Colors.white.withAlpha(20),
                  ),
                ),
              ),

              Column(
                children: [
                  const Spacer(flex: 3),
                  const Text(
                    'Tix-Tac-Toe',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(flex: 3),
                  const Text(
                    'Pick who goes first?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PickCard(symbol: 'X', color: const Color(0xFFEA3B3B)),
                      const SizedBox(width: 18),
                      PickCard(symbol: 'O', color: const Color(0xFF5B9245)),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

