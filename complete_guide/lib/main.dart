import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final questions = const [
    {
      'questionText': 'Favorite colour?',
      'answers': [
        'Black',
        'Red',
        'Green',
      ],
    },
    {
      'questionText': 'Favorite team?',
      'answers': [
        'Arsenal',
        'Chelsea',
        'Spurs',
      ],
    },
    {
      'questionText': 'Favorite city?',
      'answers': [
        'Praga',
        'Milan',
        'Liverpool',
      ],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print('Answered question! :o');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page Title'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You finished'),
              ),
      ),
    );
  }
}
