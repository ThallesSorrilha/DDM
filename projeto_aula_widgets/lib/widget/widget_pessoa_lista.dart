import 'package:flutter/material.dart';
import 'package:projeto_aula_widgets/widget/componentes/widget_botao_icone.dart';

import '/configuracao/rotas.dart';

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      'nome': 'Carlos',
      'telefone': '(44)99999-9999',
      'url':
          'https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295429_1280.png',
    },
    {
      'nome': 'Bruna',
      'telefone': '(71)99999-9999',
      'url':
          'https://cdn.pixabay.com/photo/2021/02/27/16/25/woman-6055084_960_720.jpg',
    },
    {
      'nome': 'Alana',
      'telefone': '(14)99999-9999',
      'url':
          'https://cdn.pixabay.com/photo/2016/09/22/16/38/avatar-1687700_960_720.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Pessoas')),
      body: ListView.builder(
        itemCount: pessoas.length,
        itemBuilder:
            (context, contador) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${pessoas[contador]['url']}'),
              ),
              title: Text('${pessoas[contador]['nome']}'),
              subtitle: Text('${pessoas[contador]['telefone']}'),
              trailing: SizedBox(
                width: 200,
                child: Row(
                  children: [
                    WidgetBotaoIcone(
                      Icons.delete,
                      cor: Colors.red,
                      funcao: ScaffoldMessenger(),
                    ),
                    WidgetBotaoIcone(
                      Icons.edit,
                      cor: Colors.orange,
                      funcao: () => Navigator.pushNamed(context, Rotas.pessoa),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
