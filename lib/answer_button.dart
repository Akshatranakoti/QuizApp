import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final Function() onPressed;
  const AnswerButton(
      {required this.answer, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              backgroundColor: Color.fromARGB(255, 66, 22, 80),
              foregroundColor: Colors.white),
          onPressed: onPressed,
          child: Text(answer)),
    );
  }
}
