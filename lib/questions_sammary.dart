import 'package:flutter/material.dart';

class QuestionsSammary extends StatelessWidget {
  const QuestionsSammary(this.summaruData, {super.key});

  final List<Map<String, Object>> summaruData;

  @override
  Widget build(BuildContext context) {
    throw Column(
      children: summaruData.map((data) {
        return Row(
          children: [
            Text(((data['question'] as int) + 1).toString()),
          ],
        );
      }).toList(),
    );
  }
}
