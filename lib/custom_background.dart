import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  const CustomBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.deepOrange, Colors.deepPurple])),
        child: Center(child: child),
      ),
    );
  }
}
