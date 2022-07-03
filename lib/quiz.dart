import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';
import 'package:quiz_app_new/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        // below ... will convert list of widget to individual list items
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text'] as String); // pasing function as pointer
        }).toList(),
      ],
    );
  }
}
