import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // Shouldn't change

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Takes the full width of the container
      margin: EdgeInsets.all(10), // Space around the container (all: todas dir)
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
