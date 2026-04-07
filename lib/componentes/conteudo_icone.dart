import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constantes.dart';

class DesignCartaoSuperior extends StatelessWidget {
   
   final String genero;
   final FaIconData iconeGenero;

   DesignCartaoSuperior({required this.genero, required this.iconeGenero});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          iconeGenero,
          size:80.0
          ),
          SizedBox(
            height: 15.0),
          Text(genero,
          style:kDescricaoTextStyleTextoPreto
          ),
      ],
    );
  }
}