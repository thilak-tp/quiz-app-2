import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'reset.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _questionIndex = 0;
  int _optionIndex = 0;
  // var questionOptions = [
  //   {
  //     'questionText': 'Which is your favorite color?',
  //     'option': [
  //       'Red',
  //       'Black',
  //       'Blue',
  //       'White',
  //     ],
  //   },
  //   {
  //     'questionText': 'Which is your favorite animal?',
  //     'option': [
  //       'Dog',
  //       'Cat',
  //       'Tiger',
  //       'Sloth',
  //     ],
  //   },
  //   {
  //     'questionText': 'What do you identify as?',
  //     'option': ['Male', 'Female', 'Toaster', 'Tree'],
  //   },
  // ];
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

  void resetQuiz() {
    setState(() {
      _questionIndex = _optionIndex = 0;
    });
  }

  void _answerChosen() {
    // if (_questionIndex >= 2) _questionIndex = 0;
    // if (_optionIndex >= 12) _optionIndex = 0;
    setState(() {
      _questionIndex = _questionIndex + 1;
      _optionIndex = _optionIndex + 4;
      print('Answer is chosen!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.redAccent,
          elevation: 12,
          centerTitle: true,

          backgroundColor: Colors.amberAccent,
          title: Text('Forktail Arts Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Questions(_questions[_questionIndex]),
                  Answers(_answerChosen, _options[_optionIndex]),
                  Answers(_answerChosen, _options[_optionIndex + 1]),
                  Answers(_answerChosen, _options[_optionIndex + 2]),
                  Answers(_answerChosen, _options[_optionIndex + 3]),
                ],
              )
            : Reset(resetQuiz));
  }
}
