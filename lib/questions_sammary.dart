import 'package:flutter/material.dart';

class QuestionsSammary extends StatelessWidget {
  const QuestionsSammary(this.summaruData, {super.key});

  final List<Map<String, Object>> summaruData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaruData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  SizedBox(height: 5,),
                  Text(data['user_answer'] as String),
                  Text(data['correct_answer'] as String),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
