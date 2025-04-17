class Estado{
  late String _nome;
  late String _sigla;

  String get nome => _nome; 
  set nome(String nome){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    _nome = nome;
  }

  String get sigla => _sigla; 
  set sigla(String sigla){
    if (sigla.trim().isEmpty) throw Exception('Erro: sigla não pode ser nulo');
    if (sigla.length > 2 || sigla.length < 2) throw Exception('Erro: sigla deve ter 2 caracteres.');
    _sigla = sigla;
  }

  Estado({required String nome, required String sigla}){
    this.nome = nome;
    this.sigla = sigla;
  } 
}