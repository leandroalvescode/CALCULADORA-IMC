import 'dart:math';


class CalculadoraIMC {

  int altura;
  int peso;
  late double _imc;

  CalculadoraIMC({required this.altura, required this.peso});

  String calcularIMC(){
    _imc = peso / pow(altura / 100,2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado(){
    if(_imc >= 25){
      return "Acima do peso";
    }
    else if(_imc > 18.5){
      return 'Normal';
    }
    else{
      return 'Abaixo do peso';
    }
  }


  String obterInterpretacao(){
    if(_imc >= 25){
      return "Precisa comer menos";
    }
    else if(_imc > 18.5){
      return 'Se mantenha assim';
    }
    else{
      return 'Precisa comer mais';
    }
  }
}