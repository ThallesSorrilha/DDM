import 'package:app1/aula_sintaxe/Carro_callback.dart';
import 'package:app1/aula_sintaxe/pessoa.dart';
import 'dart:io';

void main() {
  var pessoa = Pessoa();
  print('Nome: ');
  pessoa.nome = stdin.readLineSync();
  print('Peso: ');
  pessoa.peso = double.parse(stdin.readLineSync()!);

  String n = 'Thalles';
  double p = 60.0;
  var pessoa2 = Pessoa(nome: n, peso: p);

  print('Nome: ${pessoa.nome} Peso: ${pessoa.peso}');

  Carro carro =
      Carro(nome: 'Ferrari', peso: 1000.0, altura: 1.50, imc: calcularIMC);
}

double calcularIMC(double altura, double peso) {
  return peso / (altura * altura);
}
