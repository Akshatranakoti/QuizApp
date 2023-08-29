import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget ?activeScreen;
  @override
  void initState() {
    activeScreen = HomePage(setScreen);
    super.initState();
  }

  void setScreen() {
    setState(() {
      activeScreen = QuestionScreen();
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        title: 'Quiz App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        home: activeScreen);
  }
}
