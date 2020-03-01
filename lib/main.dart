import 'package:flutter/material.dart';

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

class MyHomePage extends StatelessWidget {
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
              height: 70,
              child: Center(
                child: Text(
                  '(x)に入る単語を答えよ。',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 70,
              child: Center(
                child: Text(
                  'Q1',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    'The weather in Merizo is very (x) year-round, though there are showers almost daily from December through March.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                      child: RaisedButton(
                        child: Text('agreeable'),
                        onPressed: null,
                      )
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        child: Text('agree'),
                        onPressed: null,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        child: Text('agreement'),
                        onPressed: null,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        child: Text('agreeably'),
                        onPressed: null,
                      ),
                    ),
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
