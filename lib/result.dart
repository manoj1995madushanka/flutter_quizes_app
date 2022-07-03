import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';
import 'package:quiz_app_new/answer.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "You did it.",
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
