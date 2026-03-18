import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cartao_padrao.dart';
import 'conteudo_icone.dart';
import 'constantes.dart';


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
  int altura = 180;
  

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
      backgroundColor:kCorFundo ,
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: (){
                      setState(() {
                        sexoSelecionado = Sexo.masculino;
                      });
                    },
                    filhoCartao: DesignCartaoSuperior(
                      genero:"MASCULINO",
                      iconeGenero:FontAwesomeIcons.mars),
                    cor:sexoSelecionado == Sexo.masculino ? kCorBotaoPadrao : kCorBotaoInativo,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: (){
                      setState(() {
                        sexoSelecionado = Sexo.feminino;
                      });
                    },
                    filhoCartao:DesignCartaoSuperior(
                      genero: "FEMININO", 
                      iconeGenero: FontAwesomeIcons.venus),
                    cor:sexoSelecionado == Sexo.feminino ? kCorBotaoPadrao : kCorBotaoInativo,
                    ),
                ),
              ],
            ),
          ),
          Expanded(
                child: CartaoPadrao(
                  filhoCartao:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ALTURA',
                      style:kDescricaoTextStyleTextoPreto),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(altura.toString(),
                          style:kDescricaoTextStyleTextoBranco
                          ),
                          Text("cm",
                          style:kDescricaoTextStyleTextoPreto
                          ),
                        ],
                      ),
                     Slider(
                      value: altura.toDouble(),
                      onChanged: (double novoValor){
                        setState(() {
                          altura = novoValor.round();
                        });
                      },
                      min:120.0,
                      max:220.0,
                      activeColor:Colors.deepOrange,
                      inactiveColor:kCorBotaoInativo,
                      ),
                    ],
                  ),
                  cor:kCorBotaoPadrao
                ),
              ),
        Expanded(
          child: Row(children: [
            Expanded(
                child: CartaoPadrao(
                  cor:kCorBotaoPadrao
                )
              ),
              Expanded(
                child: CartaoPadrao(
                  cor:kCorBotaoPadrao
                ),
              ),
          ],
          ),
        ),
        Container(
          color: Colors.deepOrange,
          margin: EdgeInsets.only(top: 10.0),
          height: kAlturaContainerInferior,
          width: double.infinity,
        ),
        ],
      ),
    );
  }
}
