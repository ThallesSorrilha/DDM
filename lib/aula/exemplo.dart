import 'dart:io';
import 'package:app1/aula/Pessoa.dart';

void main() {
  Pessoa pessoa = entrada();
  saida(pessoa);
}

Pessoa entrada() {
  String resposta;

  String nome;
  resposta = pegarResposta('Qual o seu nome');
  nome = resposta;

  int idade;
  resposta = pegarResposta('Qual a sua idade');
  idade = paraNumero(resposta).toInt();

  double peso;
  resposta = pegarResposta('Qual o seu Peso');
  peso = paraNumero(resposta);

  double altura;
  resposta = pegarResposta('Qual a sua altura');
  altura = paraNumero(resposta);

  String cidade;
  resposta = pegarResposta('Informe a sua cidade:');
  cidade = resposta;

  String estado;
  resposta = pegarResposta('Informe o seu estado:');
  estado = resposta;

  Pessoa pessoa = new Pessoa(nome, idade, peso, altura, cidade, estado);
  return pessoa;
}

void saida(Pessoa pessoa) {
  print('Nome: ${pessoa.nome}');
  print('Idade: ${pessoa.idade.toString()}');
  print('Peso: ${pessoa.peso.toString()}');
  print('Altura: ${pessoa.altura.toString()}');
  print('Cidade: ${pessoa.cidade}');
  print('Estado: ${pessoa.estado}');
}

bool estaPreenchido(var txt) {
  if (txt == null) {
    return false;
  } else {
    return true;
  }
}

String pegarResposta(String msg) {
  while (true) {
    print(msg);
    String resposta = stdin.readLineSync()!;
    if (estaPreenchido(resposta)) {
      return resposta;
    }
  }
}

double paraNumero(String txt) {
  double num;
  try {
    num = double.parse(txt);
  } catch (e) {
    print("Impossível converter para número");
    num = 0;
  }
  return num;
}

bool eNaoNegativo(int num) {
  if (num >= 0) {
    return true;
  } else {
    print('Número menor do que 0');
    return false;
  }
}
