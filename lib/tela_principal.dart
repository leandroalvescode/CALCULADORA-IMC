import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color corBotaoPadrao =Color(0xFF9E9E9E);
const alturaContainerInferior = 80.0;

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.centeri,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mars,
                          size:70.0),
                          Text("MASCULINO")
                      ],
                    ),
                    cor:corBotaoPadrao
                  )
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor:corBotaoPadrao,
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
