import 'package:flutter/material.dart';
import 'package:imccalc_flutter/constantes.dart';
import '../componentes/cartao_padrao.dart';
import '../componentes/botao_inferior.dart';


class TelaResultado extends StatelessWidget{

  TelaResultado({required this.resultadoIMC,required this.resultadoInterpretacao,required this.resultadoTexto});

  final String resultadoIMC;
  final String resultadoTexto;
  final String resultadoInterpretacao;

  @override
  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: kCorFundo,
    appBar: AppBar(
      title: Text("CALCULADOR"),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text("Resultado",
            style: KTituloTextStyle,),
          ),
        ),
        Expanded(
          flex:5,
          child: CartaoPadrao(
            cor: kCorBotaoPadrao,
            filhoCartao: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(resultadoTexto ,
                style: KResultadoTextStyle,
                ),
                Text(resultadoIMC.toUpperCase(),
                style: KIMCTextStyle,
                ),
                Text(resultadoInterpretacao,
                style: KCorpoTextStyle,
                ),
              ],
            ),
          ),
          ),
          BotaoInferior(
            tituloBotaoInferior: "RECALCULAR", 
            aoPressionar: (){
            Navigator.pop(context);
          },
          ),
      ],
    ),
  );
}
}