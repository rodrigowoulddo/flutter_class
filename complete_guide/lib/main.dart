import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final _questions = const [
    {
      'questionText': 'Favorite colour?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'White', 'score': 3},
        {'text': 'Blue', 'score': 5},
      ],
    },
    {
      'questionText': 'Favorite team?',
      'answers': [
        {'text': 'Chelsea', 'score': 3},
        {'text': 'Arsenal', 'score': 1},
        {'text': 'Spurs', 'score': 5},
      ],
    },
    {
      'questionText': 'Favorite city?',
      'answers': [
        {'text': 'Praga', 'score': 4},
        {'text': 'Milan', 'score': 1},
        {'text': 'Liverpool', 'score': 8},
      ],
    },
  ];

  var _questionIndex = 0;

  var _totalScore = 0;

  void _answerQuestion(int score) {
 
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print('Answered question! :o');
    print('Current score: $_totalScore');
  }

  void resetQuiz() {
    _totalScore = 0;
    _questionIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page Title'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
