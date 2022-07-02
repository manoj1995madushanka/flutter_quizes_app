import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // this is called position arguments the first constructor argument always maps to
  // questionText property
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
