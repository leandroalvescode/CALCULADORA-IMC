import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cartao_padrao.dart';
import 'conteudo_icone.dart';

const Color corBotaoPadrao =Color(0xFF9E9E9E);
const Color corFundo = Color(0xFF565656);
const alturaContainerInferior = 80.0;
const Color corInativaCartao = Color(0xFF7E7E7E);
enum Sexo {masculino , feminino}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

Color corBotaoMarculino = corInativaCartao;
Color corBotaoFemino = corInativaCartao;

atualizarCor(int sexo){
  if(sexo == 1){
    if(corBotaoMarculino == corInativaCartao){
      corBotaoMarculino = corBotaoPadrao;
      corBotaoFemino = corInativaCartao;
    }
    else{corBotaoMarculino = corInativaCartao;
    }
  }

  if(sexo == 2){
    if(corBotaoFemino == corInativaCartao){
      corBotaoFemino = corBotaoPadrao;
      corBotaoMarculino = corInativaCartao;
    }
    else{corBotaoFemino = corInativaCartao;
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:corFundo ,
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        atualizarCor(1);
                      });
                    },
                    child: CartaoPadrao(
                      filhoCartao: DesignCartaoSuperior(
                        genero:"MASCULINO",
                        iconeGenero:FontAwesomeIcons.mars),
                      cor:corBotaoMarculino,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        atualizarCor(2);
                      });
                    },
                    child: CartaoPadrao(
                      filhoCartao:DesignCartaoSuperior(
                        genero: "FEMININO", 
                        iconeGenero: FontAwesomeIcons.venus),
                      cor:corBotaoFemino,
                      ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
                child: CartaoPadrao(
                  cor:corBotaoPadrao
                ),
              ),
        Expanded(
          child: Row(children: [
            Expanded(
                child: CartaoPadrao(
                  cor:corBotaoPadrao
                )
              ),
              Expanded(
                child: CartaoPadrao(
                  cor:corBotaoPadrao
                )
              ),
          ],
          ),
        ),
        Container(
          color: Colors.deepOrange,
          margin: EdgeInsets.only(top: 10.0),
          height: alturaContainerInferior,
          width: double.infinity,
        ),
        ],
      ),
    );
  }
}
