import 'cidade.dart';

class Pessoa{
  final String nome;
  final String sobrenome;
  final int anoNascimento;
  final double peso;
  final bool ativo;
  final Cidade cidade;

  Pessoa({required this.nome, required this.sobrenome, required this.anoNascimento, required this.peso, required this.ativo, required this.cidade}){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    if (sobrenome.trim().isEmpty) throw Exception('Erro: sobrenome não pode ser nulo');
    var anoAtual = DateTime.now().year;
    if (anoNascimento > anoAtual+1 || anoNascimento < anoAtual-120) throw Exception('Erro: ano inválido.');
    if (peso < 0 || peso > 200) throw Exception('Erro: peso inválido.');
  } 

  int calcularIdade(){
    return DateTime.now().year - anoNascimento;
  }
}