import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final VoidCallback resetHandler;
  Reset(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.all(50),
          child: Image.asset('assets/done.png'),
        ),
        Center(
            child: Text(
          'You have finished the quiz!',
          style: TextStyle(fontSize: 20),
        )),
        ElevatedButton(
          onPressed: resetHandler,
          child: Text("Reset"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
          ),
        )
      ],
    );
  }
}
