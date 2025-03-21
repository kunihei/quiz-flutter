import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // AnswerButton(this.answerText, this.answerAction, {super.key});
  AnswerButton({
    super.key,
    required this.answerText,
    required this.answerAction,
  });

  final String answerText;
  void Function() answerAction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: answerAction,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
    ;
  }
}
