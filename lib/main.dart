import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 95, 53, 168),
                const Color.fromARGB(255, 64, 36, 113),
              ],
            ),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}
