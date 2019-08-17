import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetQuiz;

  Result(this.result, this.resetQuiz);

  String get resultPhrase {
    var resultTxt = 'You did it.';

    if (result <= 8) {
      resultTxt = 'You are awesome and innocent.';
    } else if (result <= 12) {
      resultTxt = 'Pretty likeable.';
    } else if (result <= 16) {
      resultTxt = 'You are ... strange?';
    } else {
      resultTxt = 'You need to improve yourself :)';
    }

    return resultTxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
