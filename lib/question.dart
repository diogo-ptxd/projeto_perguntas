import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String mytext;

  const Question(this.mytext, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(20),
      child: Text(
        mytext,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
