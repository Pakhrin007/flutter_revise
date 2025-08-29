import 'package:flutter/material.dart';
import 'package:revise/anwser_btn.dart';
import 'package:revise/data/ques.dart';
import 'package:revise/models/quiz_ques.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnwser});

  final void Function(String anwser) onSelectAnwser;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void anwserQuestion(String selectedAnwser) {
    widget.onSelectAnwser(selectedAnwser);

    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        currentQuestionIndex = 0; // reset when quiz restarts
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                currentQuestion.text,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnwsers().map(
              (anwser) {
                return AnwserBtn(
                  anwserText: anwser,
                  onTap: () {
                    anwserQuestion(anwser);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
