import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   final void Function() startQuiz;
   const HomePage(this .startQuiz,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.deepOrange, Colors.deepPurple])),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
                width: 200,
                color: Color.fromARGB(152, 249, 249, 249),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Let learn flutter",
                  style: TextStyle(color: Colors.white)),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                  onPressed: startQuiz,
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  icon: Icon(Icons.arrow_right_alt),
                  label: const Text("quiz"))
            ],
          ),
        ),
      ),
    );
  }
}
