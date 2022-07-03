import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';
import 'package:quiz_app_new/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'].toString()),
        // below ... will convert list of widget to individual list items
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer); // pasing function as pointer
        }).toList(),
      ],
    );
  }
}
