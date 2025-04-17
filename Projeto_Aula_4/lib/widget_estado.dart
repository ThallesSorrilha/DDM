import 'package:flutter/material.dart';
import 'configuracao/rotas.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Estado")),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Nome:', hintText: 'Informe o nome do Estado'),
            ),
            ElevatedButton(
              child: const Text('voltar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            // outros TextFormField
          ],
        ),
      ),
    );
  }
}
