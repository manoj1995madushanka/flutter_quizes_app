import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';
import 'package:quiz_app_new/answer.dart';

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
            ? Column(
                children: [
                  Question(
                      _questions[_questionIndex]['questionText'].toString()),
                  // below ... will convert list of widget to individual list items
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(
                        _answerQuestion, answer); // pasing function as pointer
                  }).toList(),
                ],
              )
            : const Center(
                child: Text("You did it."),
              ),
      ),
    );
  }
}
