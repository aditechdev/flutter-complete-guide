import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fav color?',
        'answers': ['Black', 'Red', 'Yellow', 'Orange']
      },
      {
        'questionText': 'What\'s your fav animal?',
        'answers': ['Rabbit', 'Dog', 'Cat', 'Elephant']
      },
      {
        'questionText': 'Who\'s your fav food?',
        'answers': ['Manchurian', 'Fried Rice', 'Vada Pao', 'Idli Sambhar']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My First App",
          ),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),

            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
