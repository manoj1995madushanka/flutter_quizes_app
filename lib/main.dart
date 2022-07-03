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

  static const _questions = [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': ['Red', 'Blue', 'Green']
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': ['Cat', 'Dog', 'Rabbit']
    }
  ];

  void _answerQuestion() {
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
            : const Result(),
      ),
    );
  }
}
