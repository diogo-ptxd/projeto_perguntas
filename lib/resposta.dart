import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
//  const Resposta({Key? key}) : super(key: key);
    final String texto;
    final void Function() onSelected;
    
    const Resposta(this.texto, this.onSelected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: onSelected,
                child: Text(texto),
              ),
    );
  }
}