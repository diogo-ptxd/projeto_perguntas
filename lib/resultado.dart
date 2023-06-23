import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final VoidCallback resetAnswer;

  const Resultado({Key? key, required this.resetAnswer}) : super(key: key);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [  const Text('A sua pontuação foi de: '),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              onPrimary: Colors.white,
            ),
            onPressed: widget.resetAnswer, // Use widget.resetAnswer to access the resetAnswer function
            child: const Text('Restart'),
          ),
        ],
      ),
    );
  }
}