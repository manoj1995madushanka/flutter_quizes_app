import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';
import 'package:quiz_app_new/answer.dart';
import 'package:quiz_app_new/quiz.dart';
import 'package:quiz_app_new/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// here State<MyApp> says this state belongs to MyApp class
class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 3}
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 3},
        {'text': 'Rabbit', 'score': 3}
      ]
    }
  ];

  void _answerQuestion(int score) {
    this._totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print("we have more questions");
    } else {
      print("no more questions");
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore),
      ),
    );
  }
}
