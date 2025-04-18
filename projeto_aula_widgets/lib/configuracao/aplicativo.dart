import 'package:flutter/material.dart';
import 'package:projeto_aula_widgets/widget/widget_pessoa_lista.dart';
import '/widget/widget_cidade.dart';
import '/widget/widget_estado.dart';
import '/widget/widget_menu.dart';
import '/configuracao/rotas.dart';
import '/widget/widget_pessoa.dart';

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
        Rotas.home: (context) => WidgetPessoaLista(), // const WidgetMenu() //WidgetPessoaLista()
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
      },
    );
  }
}
