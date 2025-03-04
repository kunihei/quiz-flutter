import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          AnswerButton(answerText: 'Answer 1', answerAction: () {}),
          AnswerButton(answerText: 'Answer 2', answerAction: () {}),
          AnswerButton(answerText: 'Answer 3', answerAction: () {}),
          // AnswerButton('Answer 1', () {}),
          // AnswerButton('Answer 2', () {}),
          // AnswerButton('Answer 3', () {}),
          
        ],
      ),
    );
  }
}
