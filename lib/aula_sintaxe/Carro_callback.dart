class Carro {
  String nome;
  double peso;
  double altura;
  Function imc;

  Carro(
      {required this.nome,
      required this.peso,
      required this.altura,
      required this.imc});

  double imprimirIMC() {
    return imc(altura, peso);
  }
}
