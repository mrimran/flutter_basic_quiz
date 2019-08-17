import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final questionIndx;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndx,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndx]['questionTxt']),
        ...(questions[questionIndx]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //used anon function to call answerQuestion with parameters and hold it
          //in another function so that gets executed once somebody clicks on the button
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
