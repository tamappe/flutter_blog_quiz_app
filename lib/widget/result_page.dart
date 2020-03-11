import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final Function _tapResetButton;

  ResultPage(this._tapResetButton);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('問題が終了しました!'),
        RaisedButton(
          child: Text('リセットする'),
          onPressed: _tapResetButton,
        )
      ],
    );
  }
}
