import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/custom_background.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  var index = 0;
  setAnswer() {
    setState(() {
      index = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[index];
    return CustomBackground(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 2, 32, 47),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledList().map((answer) {
              return AnswerButton(answer: answer, onPressed: () {});
            }),
            AnswerButton(
                answer: "submit",
                onPressed: () {
                  setAnswer();
                })
          ],
        ),
      ),
    );
  }
}
