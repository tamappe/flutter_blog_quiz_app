import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AnswerButton extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final String keyString;

  AnswerButton({
    @required this.questionIndex,
    @required this.questions,
    @required this.answerQuestion,
    @required this.keyString
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: Constants().answerButtonHeight,
        child: RaisedButton(
          child: Text(questions[questionIndex][keyString]),
          onPressed: answerQuestion,
        ));
  }
}
