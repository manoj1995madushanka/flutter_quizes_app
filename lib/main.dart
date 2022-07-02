import 'package:flutter/material.dart';

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
  var questionIndex = 0;

  var questions = [
    'what\'s your favourite color?',
    'what\'s your favourite animal?'
  ];

  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
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
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
              // here only added method name this will pointer to actual method note the method return value
            ),
            ElevatedButton(
              onPressed: () => {print("answer 2 chosen")},
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
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
