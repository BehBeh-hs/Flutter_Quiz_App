import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartingPage extends StatelessWidget {
  const StartingPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(130, 255, 255, 255),
        ),
        const SizedBox(height: 50),
        const StyledText('Learn Flutter the fun way!'),
        const SizedBox(height: 35),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 235, 59),
            foregroundColor: const Color.fromARGB(255, 168, 27, 220),
            textStyle: const TextStyle(fontSize: 16),
          ),
          icon: const Icon(Icons.arrow_right_alt), // add icon
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
