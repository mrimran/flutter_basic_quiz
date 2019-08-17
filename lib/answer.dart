import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunc;
  final String answerTxt;

  Answer(this.answerFunc, this.answerTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerTxt),
        onPressed: answerFunc,
      ),
    );
  }
}
