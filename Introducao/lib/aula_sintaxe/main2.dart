import 'package:app1/aula_sintaxe/Carro_callback.dart';
import 'dart:io';

class Pessoa {
  String? nome;
  int? idade;

  Pessoa({this.nome, this.idade});
}

void main() {
  var pessoa = Pessoa();
  print('Nome: ');
  pessoa.nome = stdin.readLineSync()!;
  print('Idade: ');
  pessoa.idade = int.parse(stdin.readLineSync()!);

  String n = 'Thalles';
  int i = 60;
  var pessoa2 = Pessoa(nome: n, idade: i);

  print('Nome: ${pessoa.nome} Peso: ${pessoa.idade}');

  Carro carro =
      Carro(nome: 'Ferrari', peso: 1000.0, altura: 1.50, imc: calcularIMC);
}

double calcularIMC(double altura, double peso) {
  return peso / (altura * altura);
}
