import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  String questionText;

  // this is called position arguments the first constructor argument always maps to
  // questionText property
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
