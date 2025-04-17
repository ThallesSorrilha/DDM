import 'estado.dart';

class Cidade{
  final String nome;
  final Estado estado;

  Cidade({required this.nome, required this.estado}){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
  }
}