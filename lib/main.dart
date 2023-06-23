import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _answerSelected = 0;
  var totalPoints = 0;

  void _answer(int pontuacao) {
    if (hasQuestionSelected) {
      setState(() {
        _answerSelected++;
        totalPoints += pontuacao;
      });
    }
    print(totalPoints);
  }

  bool get hasQuestionSelected {
    return _answerSelected < _questions.length;
  }

  final List<Map> _questions = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'points': 10},
        {'texto': 'Vermelho', 'points': 5},
        {'texto': 'Azul' , 'points': 3},
        {'texto': 'Branco', 'points': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cobra', 'points': 10},
        {'texto': 'Leão', 'points': 5},
        {'texto': 'Coelho', 'points': 3},
        {'texto': 'Elefante', 'points': 1},
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'João', 'points': 10},
        {'texto': 'Maria', 'points': 5},
        {'texto': 'Leo', 'points': 3},
        {'texto': 'Josefina', 'points': 1},
      ],
    },
  ];

  void resetAnswer() {
    setState(() {
      _answerSelected = 0;
      totalPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MY APP'),
        ),
        body: hasQuestionSelected
            ? Questionario(
                questions: _questions,
                answerSelected: _answerSelected,
                answer: _answer,
              )
            : Resultado(
                resetAnswer: resetAnswer,
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
