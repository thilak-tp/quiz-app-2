import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  void answerChosen(int number) {
    setState(() {
      if (questionIndex >= 2) questionIndex = 0;
      if (optionIndex >= 11) optionIndex = 0;
      questionIndex = questionIndex + 1;
      optionIndex = optionIndex + 4;
      print('Answer $number is chosen!');
    });
  }

  int questionIndex = 0;
  int optionIndex = 0;
  var questions = [
    'Which is your favorite color?',
    'Which is your favorite animal?',
    'What do you identify as?'
  ];
  var options = [
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
  @override // It is used as a decorator and is feature of flutter and not dart
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Forktail Arts'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(80, 200, 80, 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                questions[questionIndex],
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () => answerChosen(1),
                  child: Text(options[optionIndex])),
              ElevatedButton(
                  onPressed: () => answerChosen(2),
                  child: Text(options[optionIndex + 1])),
              ElevatedButton(
                  onPressed: () => answerChosen(3),
                  child: Text(options[optionIndex + 2])),
              ElevatedButton(
                  onPressed: () => answerChosen(4),
                  child: Text(options[optionIndex + 3])),
            ],
          ),
        ),
      ),
    );
  }
}
