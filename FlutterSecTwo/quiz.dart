import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'restart.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final Function restartQuiz;
  final List<Map<String, Object>> questions;
  final int questionIdx;

  Quiz(
      {@required this.answerQuestion,
      @required this.restartQuiz,
      @required this.questions,
      @required this.questionIdx});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(
            questions[questionIdx]['questionTxt'],
          ),
          ...(questions[questionIdx]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(answer['value']), answer['text']);
          }).toList(),
          Restart(restartQuiz),
        ],
      ),
    );
  }
}
