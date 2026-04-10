import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalc_flutter/telas/tela_resultado.dart';
import '../componentes/cartao_padrao.dart';
import '../componentes/conteudo_icone.dart';
import '../constantes.dart';
import '../componentes/botao_inferior.dart';
import '../componentes/botao_arredondado.dart';
import '../calculadora_imc.dart';

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
  int peso = 60;
  int idade = 18;
  
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
                  cor:kCorBotaoPadrao,
                  filhoCartao: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("PESO",
                      style: kDescricaoTextStyleTextoPreto,
                      ),
                      Text(peso.toString(),
                      style: kDescricaoTextStyleTextoBranco,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BotaoArredondado(
                            icone: FontAwesomeIcons.minus,
                            aoPressionar: (){
                              setState(() {
                                peso--;
                              });
                            },
                          ),

                          SizedBox(
                            width:10.0
                            ),

                          BotaoArredondado(
                            icone:FontAwesomeIcons.plus,
                            aoPressionar: (){
                              setState(() {
                                peso++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
              Expanded(
                child: CartaoPadrao(
                  cor:kCorBotaoPadrao,
                  filhoCartao: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("IDADE",
                      style: kDescricaoTextStyleTextoPreto,
                      ),
                      Text(idade.toString(),
                      style: kDescricaoTextStyleTextoBranco,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BotaoArredondado(
                            icone: FontAwesomeIcons.minus, 
                            aoPressionar: (){
                              setState(() {
                                idade--;
                              });
                            }
                            ),
                            SizedBox(
                            width: 10.0,
                          ),
                            BotaoArredondado(
                            icone: FontAwesomeIcons.plus, 
                            aoPressionar: (){
                              setState(() {
                                idade++;
                              });
                            }
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
          ),
        ),
        BotaoInferior(
          tituloBotaoInferior: "CALCULAR",
          aoPressionar: (){
            
            CalculadoraIMC calc =CalculadoraIMC(
              altura: altura, 
              peso: peso 
              );

          Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) => TelaResultado(
              resultadoIMC: calc.calcularIMC(),
              resultadoTexto:calc.obterResultado() ,
              resultadoInterpretacao:calc.obterInterpretacao() ,
            )
            ),
          );
        },
        ),
        ],
      ),
    );
  }
}