import 'dart:io';
import 'cidade.dart';
import 'estado.dart';
import 'pessoa.dart';

class PessoaConsole{
  late Pessoa pessoa;

  solicitarDados(){
    try {
      var nome = _entrada('Nome:');
      var sobrenome = _entrada('sobrenome:');
      var anoNascimento = int.parse(_entrada('Ano Nascimento:'));
      var peso = double.parse(_entrada('Peso:'));
      var nomeEstado = _entrada('Nome Estado:');
      var siglaEstado = _entrada('Sigla Estado:');
      var nomeCidade = _entrada('Nome Cidade');
      var pessoaEAtivo = _entradaSimNao();

      var estado = Estado(nome: nomeEstado, sigla: siglaEstado);
      var cidade = Cidade(nome: nomeCidade, estado: estado);
      pessoa = Pessoa(nome: nome, sobrenome: sobrenome, anoNascimento: anoNascimento, peso: peso, ativo: pessoaEAtivo, cidade: cidade);
      
    } catch (e) {
      print(e);
      solicitarDados();
    }
  }

  gerarSaida(){
    print('''
      Nome: ${pessoa.nome}
      Sobrenome: ${pessoa.sobrenome}
      Ano de Nascimento: ${pessoa.anoNascimento}
      Peso: ${pessoa.peso} kg
      Cidade: ${pessoa.cidade.nome}
      Estado: ${pessoa.cidade.estado.nome} (${pessoa.cidade.estado.sigla})
      Status: ${pessoa.ativo ? "Ativo" : "Inativo"}
      Idade: ${pessoa.calcularIdade()}
    ''');
  }

  String _entrada(String rotulo){
    print(rotulo);
    var entrada = stdin.readLineSync();
    if(entrada == null){
      print('Erro: entrada nula');
      throw Exception();
    }
    return entrada;
  }

  bool _entradaSimNao(){
    var rotulo = 'É ativo? (S/N)';
    var entrada = _entrada(rotulo).toUpperCase();
    if(entrada != 'S' && entrada != 'N'){
      print('Erro: entrada inválida');
      throw Exception();
    }
    return entrada == 'S';
  }
}