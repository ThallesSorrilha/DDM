import 'package:flutter/material.dart';
import 'configuracao/rotas.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({key}) : super(key: key);

  Widget criarBotao(BuildContext context, String rotulo, String rota) {
    return ElevatedButton(
        child: Text(rotulo),
        onPressed: () {
          Navigator.of(context).pushNamed(rota);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      criarBotao(context, 'Cadastro de Estado', Rotas.estado),
      criarBotao(context, 'Cadastro de Cidade', Rotas.cidade),
      criarBotao(context, 'Cadastro de Pessoa', Rotas.pessoa),
      criarBotao(context, 'Cadastro de Produto', Rotas.produto),
      criarBotao(context, 'Cadastro de Categoria', Rotas.categoria)
    ]);
  }
}
