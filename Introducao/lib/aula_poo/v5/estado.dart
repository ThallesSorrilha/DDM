class Estado{
  final String nome;
  final String sigla;

  Estado({required this.nome, required this.sigla}){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    if (sigla.trim().isEmpty) throw Exception('Erro: sigla não pode ser nulo');
    if (sigla.length > 2 || sigla.length < 2) throw Exception('Erro: sigla deve ter 2 caracteres.');
  } 
}