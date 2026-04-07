import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoInferior extends StatelessWidget{
  final String tituloBotaoInferior;
  final aoPressionar;
  BotaoInferior({required this.tituloBotaoInferior, required this.aoPressionar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: aoPressionar,
        child: Container(
          child: Center(
            child: Text(tituloBotaoInferior,
            style:KDescricaoTextstyleBotaoInferior,
            ),
            ),
          color: kCorBotaoInferior,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(bottom: 20.0),
          height: kAlturaContainerInferior,
          width: double.infinity,
        ),
      );
  }
}