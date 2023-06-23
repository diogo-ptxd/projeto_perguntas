import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map> questions;
  final int answerSelected;
  final void Function(int) answer;

  const Questionario(
      {Key? key,
      required this.questions,
      required this.answerSelected,
      required this.answer})
      : super(key: key);
  bool get hasQuestionSelected {
    return answerSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = hasQuestionSelected
        ? questions[answerSelected]['respostas'] as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Question(questions[answerSelected]['texto'].toString()),
        ...respostas.map((ans) {
          return Resposta(ans['texto'].toString(),
              () => answer(int.parse(ans['points'].toString())));
        }).toList(),
      ],
    );
  }
}
