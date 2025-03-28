import 'package:app1/aula_sintaxe/cidade.dart';

class Pessoa {
  String nome;
  int idade;
  double altura;
  double peso;
  Cidade cidade;
  Function imc;

  Pessoa(
      {required this.nome,
      required this.idade,
      required this.altura,
      required this.peso,
      required this.cidade,
      required this.imc});
}
