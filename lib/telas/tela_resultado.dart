import 'package:flutter/material.dart';
import 'package:imccalc_flutter/constantes.dart';
import '../componentes/cartao_padrao.dart';
import '../componentes/botao_inferior.dart';

class TelaResultado extends StatelessWidget{

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
                Text("NORMAL",
                style: KResultadoTextStyle,
                ),
                Text("14.8",
                style: KIMCTextStyle,
                ),
                Text("O seu IMC está baixo, você precisa comer mais!",
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