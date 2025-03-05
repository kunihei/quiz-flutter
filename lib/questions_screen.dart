import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getSheffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  answerAction: () {
                    answerQuestion();
                  });
            }),
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   answerAction: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   answerAction: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   answerAction: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   answerAction: () {},
            // ),
            // AnswerButton('Answer 1', () {})
            // AnswerButton('Answer 2', () {}),
            // AnswerButton('Answer 3', () {}),
          ],
        ),
      ),
    );
  }
}
