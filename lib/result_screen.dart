import 'package:flutter/material.dart';
import 'package:quiz_app/custom_background.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "questionindex": i,
        "question": questions[i].question,
        "correctAnswer": questions[i].answers[0],
        "userAnswer": chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionSummary(
            summaryData: getSummaryData(),
          ),
          ...chosenAnswers.map(
            (e) {
              print(e);
              return Text(e);
            },
          ),
          TextButton(onPressed: () {}, child: const Text("Restart Quiz"))
        ],
      ),
    ));
  }
}
