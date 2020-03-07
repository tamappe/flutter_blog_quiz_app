import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AnswerButton extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final String keyString;

  AnswerButton({
    this.questionIndex,
    this.questions,
    this.keyString
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: Constants().answerButtonHeight,
        child: RaisedButton(
          child: Text(questions[questionIndex][keyString]),
          onPressed: null,
        ));
  }
}
