import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {

  final Color cor;
  final Widget? filhoCartao;
  final Function()? aoPressionar;

  CartaoPadrao({required this.cor, this.filhoCartao, this.aoPressionar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:aoPressionar,
      child: Container(
        child: filhoCartao,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
        color: cor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  
  }
}