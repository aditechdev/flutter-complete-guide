import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Orange', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Dog', 'score': 6},
        {'text': 'Cat', 'score': 8},
        {'text': 'Elephant', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your fav food?',
      'answers': [
        {'text': 'Manchurian', 'score': 3},
        {'text': 'Fried Rice', 'score': 5},
        {'text': 'Vada Pao', 'score': 2},
        {'text': 'Idli Sambhar', 'score': 7}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;

    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My First App",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
