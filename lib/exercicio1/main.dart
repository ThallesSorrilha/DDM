/*
Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida,
os atributos recebam um valor padrão:
*/

import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}

class Produto {
  String? nome = '...';
  double? preco = 0.0;
}
