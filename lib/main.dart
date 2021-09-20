import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  int _optionIndex = 0;
  var _questions = [
    'Which is your favorite color?',
    'Which is your favorite animal?',
    'What do you identify as?'
  ];
  var _options = [
    'Red',
    'Black',
    'Blue',
    'White',
    'Dog',
    'Cat',
    'Tiger',
    'Sloth',
    'Male',
    'Female',
    'Toaster',
    'Tree',
  ];
  void _answerChosen() {
    if (_questionIndex >= 2) _questionIndex = 0;
    if (_optionIndex >= 12) _optionIndex = 0;
    setState(() {
      _questionIndex = _questionIndex + 1;
      _optionIndex = _optionIndex + 4;
      print('Answer is chosen!');
    });
  }

  @override // It is used as a decorator and is feature of flutter and not dart
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.redAccent,
          title: Text('Forktail Arts'),
        ),
        body: Column(
          children: [
            Questions(_questions[_questionIndex]),
            Answers(_answerChosen, _options[_optionIndex]),
            Answers(_answerChosen, _options[_optionIndex + 1]),
            Answers(_answerChosen, _options[_optionIndex + 2]),
            Answers(_answerChosen, _options[_optionIndex + 3]),
          ],
        ),
      ),
    );
  }
}
