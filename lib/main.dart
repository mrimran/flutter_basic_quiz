import 'package:flutter/material.dart';
import 'package:flutter_guide/quiz.dart';
import 'package:flutter_guide/result.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndx = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {//rebuild build method and evaluate everything
      _questionIndx = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionTxt': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionTxt': "What's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 7},
        {'text': 'Goat', 'score': 3}
      ]
    },
    {
      'questionTxt': "Your favorite game?",
      'answers': [
        {'text': 'Hockey', 'score': 1},
        {'text': 'Cricket', 'score': 1},
        {'text': 'Footbal', 'score': 1},
        {'text': 'Volleyball', 'score': 1}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      //re-render UI
      _questionIndx = _questionIndx + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App...'),
        ),
        body: _questionIndx < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndx: _questionIndx,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
