import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/utils/hex_color.dart';
import '../utils/constants.dart';

class AnswerButton extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final String keyString;

  AnswerButton({
    this.questionIndex,
    this.questions,
    this.answerQuestion,
    this.keyString
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Constants().answerButtonHeight / 2),
      child: SizedBox(
          width: double.infinity,
          height: Constants().answerButtonHeight,
          child: RaisedButton(
            color: HexColor('#D6D7D7'),
            child: Text(questions[questionIndex][keyString]),
            onPressed: answerQuestion,
          )),
    );
  }
}
