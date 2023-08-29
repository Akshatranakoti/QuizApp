import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/custom_background.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return CustomBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.question),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answer: answer, onPressed: () {});
          }),
        ],
      ),
    );
  }
}
