import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() {
    return _Formulario();
  }
}

class _Formulario extends State<Formulario> {
  String _nome = '';
  var _campoNome = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Formulário")),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(label: Text('nome')),
              controller: _campoNome,
              onSaved: (newValue) => _nome = _campoNome.text,
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.length < 3) {
                  return 'Nome não deve ter menos do que 3 caracteres';
                }
              },
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text('e-mail')),
              validator: (valorDigitado) {
                if (valorDigitado == null || !valorDigitado.contains('@')) {
                  return 'E-mail deve possuir @';
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('deu certo!');
                } else {
                  print('deu errado');
                }
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
