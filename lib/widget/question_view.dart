import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;

  QuestionView(this.questionIndex, this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            questions[questionIndex]['question'],
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
