import 'package:flutter/material.dart';
import 'tela_principal.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF3D3D3D),
        scaffoldBackgroundColor: Color(0xFF898989),
      ),
      home: TelaPrincipal(),
    );
  }
}

