import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String option;
  final VoidCallback selector;
  Answers(this.selector, this.option);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selector,
        child: Text(option),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
        ),
      ),
    );
  }
}
