import 'package:app1/aula_sintaxe/pessoa.dart';
import 'package:app1/aula_sintaxe/cidade.dart';
import 'package:app1/aula_sintaxe/estado.dart';

class Carro {
  String? marca;
  late int ano;
}

void main() {
  var estado1 = Estado(nome: 'Paraná', sigla: 'PR');
  var cidade1 = Cidade(nome: 'Paranavaí', estado: estado1);
  var pessoa1 = Pessoa(
      nome: 'Thalles',
      idade: 16,
      altura: 1.69,
      peso: 60.0,
      cidade: cidade1,
      imc: (double altura, double peso) => peso / (altura * altura));

  Pessoa(
      nome: 'João Pedro',
      idade: 16,
      altura: 1.80,
      peso: 80.5,
      cidade:
          Cidade(nome: 'Maringá', estado: Estado(nome: 'Paraná', sigla: 'PR')),
      imc: (double altura, double peso) {
        peso / altura * altura;
      });
}
