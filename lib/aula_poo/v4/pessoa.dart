import 'cidade.dart';

class Pessoa {
  late String _nome;
  late String _sobrenome;
  late int _anoNascimento;
  late double _peso;
  bool ativo;
  Cidade cidade;

  String get nome => _nome;
  set nome(String nome) {
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    _nome = nome;
  }

  String get sobrenome => _sobrenome;
  set sobrenome(String sobrenome) {
    if (sobrenome.trim().isEmpty)
      throw Exception('Erro: sobrenome não pode ser nulo');
    _sobrenome = sobrenome;
  }

  int get anoNascimento => _anoNascimento;
  set anoNascimento(int anoNascimento) {
    int anoAtual = DateTime.now().year;
    if (anoNascimento > anoAtual + 1 || anoNascimento < anoAtual - 120)
      throw Exception('Erro: ano inválido.');
    _anoNascimento = anoNascimento;
  }

  double get peso => _peso;
  set peso(double peso) {
    if (peso < 0 || peso < 200) throw Exception('Erro: peso inválido.');
    _peso = peso;
  }

  Pessoa(
      {required String nome,
      required String sobrenome,
      required int anoNascimento,
      required double peso,
      required this.ativo,
      required this.cidade}) {
    this.nome = nome;
    this.sobrenome = sobrenome;
    this.anoNascimento = anoNascimento;
    this.peso = peso;
  }

  int calcularIdade() {
    return DateTime.now().year - _anoNascimento;
  }
}
/**
 Faça uma reflexão!
 1) No construtor:
  - Por que temos declarações vaiadas de parâmetros? (diferença entre this e o que não tem this)
  - Estamos utilizando parâmetros nomeados ou posicionais? Qual a diferença?
 */