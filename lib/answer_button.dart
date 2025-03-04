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
            style: ElevatedButton.styleFrom(),
            child: Text(answerText),
          );;
  }
}