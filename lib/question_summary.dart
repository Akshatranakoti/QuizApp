import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionSummary({super.key,required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((e)  {
        return Row(children: [
          Text(((e['questionindex']as int)+1).toString()),
          Column(
            children: [
              Text((e['question']as String)),
              Text((e['correctAnswer']as String)),
              Text((e['userAnswer']as String)),
            ],
          )
        ],);
      }).toList(),
    );
  }
}
