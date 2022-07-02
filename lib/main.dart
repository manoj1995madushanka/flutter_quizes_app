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

  final _questions = [
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
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]['questionText'].toString()),
            // below ... will convert list of widget to individual list items
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                  _answerQuestion, answer); // pasing function as pointer
            }).toList(),
          ],
        ),
      ),
    );
  }
}
