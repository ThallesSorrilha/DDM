import 'estado.dart';

class Cidade {
  late String _nome;
  Estado estado;

  set nome(String nome) {
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    _nome = nome;
  }

  String get nome => _nome;

  Cidade({required String nome, required this.estado}) {
    this.nome = nome;
  }
}
