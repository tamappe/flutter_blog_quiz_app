import 'package:flutter/material.dart';
import '../utils/constant.dart';

class AnswerButton extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final String keyString;

  AnswerButton(
      this.questions,
      this.questionIndex,
      this.answerQuestion,
      this.keyString
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: Constant().answerButtonHeight,
        child: RaisedButton(
          child: Text(questions[questionIndex][keyString]),
          onPressed: answerQuestion,
        ));
  }
}
