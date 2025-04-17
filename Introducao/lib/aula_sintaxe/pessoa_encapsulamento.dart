class Pessoa {
  // private
  String _nome;
  double _peso;

  // arrow function
  String get nome => _nome;
  set nome(String nome) => _nome;

  double getPeso() {
    return _peso;
  }

  void set peso(double peso) {
    if (peso < 0) throw Exception('Peso Inválido');
    _peso = peso;
  }
  /*Pessoa(String nome, double peso) {
    _nome = nome;
    _peso = peso;
  }*/

  Pessoa(String nome, double peso)
      : _nome = nome,
        _peso = peso;
}
