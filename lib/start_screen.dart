import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});

  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn Flutter in a fun way!',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
              onPressed:
                startquiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              child: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
