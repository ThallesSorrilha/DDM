import 'package:flutter/material.dart';

class WidgetBotaoIcone extends StatelessWidget {
  final IconData icone;
  final MaterialColor? cor;
  final VoidCallback funcao;

  const WidgetBotaoIcone(
    this.icone,
    {key,
    this.cor,
    required this.funcao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: funcao, icon: Icon(icone), color: cor);
  }
}
