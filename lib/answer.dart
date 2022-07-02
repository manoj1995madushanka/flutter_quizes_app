import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // taking function pointer from main dart
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(TextStyle(color: Colors.red)),
        ),
        onPressed: selectHandler,
        child: Text("Answer 3"),
      ),
    );
  }
}
