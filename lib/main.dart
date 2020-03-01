import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/utils/constant.dart';
import 'package:flutter_quiz_app/widget/answer_button.dart';
import 'package:flutter_quiz_app/widget/question_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// 問題文のindex
  var _questionIndex = 0;

  var _questions = [
    {
      'question': 'The weather in Merizo is very (x) year-round, though there are showers almost daily from December through March.',
      'a': 'agreeable',
      'b': 'agree',
      'c': 'agreement',
      'd': 'agreeably',
      'correctAnswer': 'A'
    },
    {
      'question': '(x) for the competition should be submitted by November 28 at the latest.',
      'a': 'Enter',
      'b': 'Entered',
      'c': 'Entering',
      'd': 'Entries',
      'correctAnswer': 'D'
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文法問題'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: Constant().questionAreaHeight,
              color: Colors.red,
              child: Center(
                child: Text(
                  '(x)に入る単語を答えよ。',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              height: Constant().questionAreaHeight,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Q${_questionIndex + 1}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            QuestionView(_questionIndex, _questions),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnswerButton(_questions, _questionIndex, _answerQuestion, 'a'),
                    AnswerButton(_questions, _questionIndex, _answerQuestion, 'b'),
                    AnswerButton(_questions, _questionIndex, _answerQuestion, 'c'),
                    AnswerButton(_questions, _questionIndex, _answerQuestion, 'd'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
