import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';
import 'package:quiz_app_new/answer.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler);

  /*
  * this is not a method
  * dart inbuilt feature for generate dynamic value
  * */
  String get resultPhrase {
    var resultText = "you did it";
    if (resultScore > 5) {
      resultText = "Good";
    } else if (resultScore > 7) {
      resultText = "brillient";
    } else {
      resultText = "bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}
