import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';

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

  var _questions = [
    'what\'s your favourite color?',
    'what\'s your favourite animal?'
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
            Question(_questions[_questionIndex]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
              // here only added method name this will pointer to actual method note the method return value
            ),
            ElevatedButton(
              onPressed: () => {
                _answerQuestion()
              },
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                _answerQuestion;
                print("answer 3 chosen");
              },
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
