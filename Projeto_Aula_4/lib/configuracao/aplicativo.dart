import 'package:flutter/material.dart';
import 'package:projeto_aula4/widget_categoria.dart';
import 'package:projeto_aula4/widget_cidade.dart';
import 'package:projeto_aula4/widget_menu.dart';
import 'package:projeto_aula4/widget_estado.dart';
import 'package:projeto_aula4/widget_pessoa.dart';
import 'package:projeto_aula4/widget_produto.dart';
import 'rotas.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.produto: (context) => const WidgetProduto(),
        Rotas.categoria: (context) => const WidgetCategoria()
        // Fazer para as outras classes
      },
    );
  }
}
