import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, this.onRestart, {super.key});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Quiz Completed!",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            "You answered ${chosenAnswers.length} questions.",
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: onRestart,
            icon: const Icon(Icons.restart_alt),
            label: const Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}
