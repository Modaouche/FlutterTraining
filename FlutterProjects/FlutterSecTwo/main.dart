import 'package:Flutter_app/quiz.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './end.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionTxt': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Green', 'value': 6},
        {'text': 'Blue', 'value': 10},
        {'text': 'Red', 'value': 2},
        {'text': 'Black', 'value': 3},
        {'text': 'White', 'value': 8},
        {'text': 'Pink', 'value': 1},
        {'text': 'Other', 'value': 5},
      ],
    },
    {
      'questionTxt': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'value': 10},
        {'text': 'Elephant', 'value': 5},
        {'text': 'Shark', 'value': 7},
        {'text': 'Whale', 'value': 4},
        {'text': 'Rabbit', 'value': 2},
        {'text': 'Other', 'value': 3}
      ],
    },
    {
      'questionTxt': 'What\'s your favorite discipline?',
      'answers': [
        {'text': 'Chimestery', 'value': 7},
        {'text': 'History', 'value': 5},
        {'text': 'Language', 'value': 6},
        {'text': 'Mathematics', 'value': 10},
        {'text': 'Other', 'value': 4}
      ],
    },
  ];
  var _questionIdx = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _questionIdx = _questionIdx + 1;

    setState(() {
      _totalScore += score;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('How are you close to my choices ?'),
          ),
          body: _questionIdx < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  restartQuiz: _restartQuiz,
                  questions: _questions,
                  questionIdx: _questionIdx)
              : End(_totalScore, _restartQuiz)),
    );
  }
}
