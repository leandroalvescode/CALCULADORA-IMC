import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cartao_padrao.dart';
import 'conteudo_icone.dart';

const Color corBotaoPadrao =Color(0xFF9E9E9E);
const Color corFundo = Color(0xFF565656);
const alturaContainerInferior = 80.0;
const Color corBotaoInativo = Color(0xFF7E7E7E);

enum Sexo {
  masculino,
  feminino
  }

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  Sexo? sexoSelecionado;


// Color corBotaoMasculino = corBotaoInativo;
// Color corBotaoFemino = corBotaoInativo;

// atualizarCor(Sexo sexoSelecionado){
//   if(sexoSelecionado == Sexo.masculino){
//     if(corBotaoMasculino == corBotaoInativo){
//       corBotaoMasculino = corBotaoPadrao;
//       corBotaoFemino = corBotaoInativo;
//     }
//     else{corBotaoMasculino = corBotaoInativo;
//     }
//   }

//   if(sexoSelecionado == Sexo.feminino){
//     if(corBotaoFemino == corBotaoInativo){
//       corBotaoFemino = corBotaoPadrao;
//       corBotaoMasculino = corBotaoInativo;
//     }
//     else{corBotaoFemino = corBotaoInativo;
//     }
//   }
// }



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
                        sexoSelecionado = Sexo.masculino;
                      });
                    },
                    child: CartaoPadrao(
                      filhoCartao: DesignCartaoSuperior(
                        genero:"MASCULINO",
                        iconeGenero:FontAwesomeIcons.mars),
                      cor:sexoSelecionado == Sexo.masculino ? corBotaoPadrao : corBotaoInativo,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        sexoSelecionado = Sexo.feminino;
                      });
                    },
                    child: CartaoPadrao(
                      filhoCartao:DesignCartaoSuperior(
                        genero: "FEMININO", 
                        iconeGenero: FontAwesomeIcons.venus),
                      cor:sexoSelecionado == Sexo.feminino ? corBotaoPadrao : corBotaoInativo,
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
