import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {

  final Color cor;
  final Widget? filhoCartao;

  CartaoPadrao({required this.cor, this.filhoCartao});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: filhoCartao,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
      color: cor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}