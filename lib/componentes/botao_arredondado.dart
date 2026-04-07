import 'package:flutter/material.dart';
import '../constantes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BotaoArredondado extends StatelessWidget{

  final FaIconData icone;
  final Function() aoPressionar;

  BotaoArredondado({required this.icone, required  this.aoPressionar});

  @override
    Widget build(BuildContext context) {
      return RawMaterialButton(
        child:FaIcon(icone),
        onPressed: aoPressionar,
        constraints: BoxConstraints.tightFor(
          width: 56.0, 
          height: 56.0
          ),
        shape: CircleBorder(),
        fillColor: kCorBotaoInativo,
        elevation: 6,
        );
    }

}
