import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:quizapp2/homePage.dart';
import './question.dart';
import './answer.dart';
import './reset.dart';
import 'splash.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  @override // It is used as a decorator and is feature of flutter and not dart
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/logo.png'),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 1000,
        duration: 3000,
        nextScreen: HomePage(),
      ),
    );
  }
}
