import 'dart:io';

void main() {}

class Retangulo {
  double _largura;
  double _altura;

  Retangulo({required double largura, required double altura})
      : _largura = largura,
        _altura = altura;

  double get largura => _largura;
  set largura(double largura) {
    _largura = largura;
  }

  double get altura => _altura;
  set altura(double altura) {
    _altura = altura;
  }
}

class Pessoa {
  double _peso;
  int _idade;

  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) _peso = novoPeso;
  }

  Pessoa({required double peso, required int idade})
      : _peso = peso,
        _idade = idade;
  set idade(int idade) {
    if (idade >= 0) _idade = idade;
  }
}
