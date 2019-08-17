import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTxt;

  Question(this.questionTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //take as much as you can of screen
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionTxt,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
