import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';
import 'package:quiz_app_new/answer.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("You did it."),
    );
  }
}
