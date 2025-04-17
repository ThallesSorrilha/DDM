import 'package:flutter/material.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('voltar'),
      onPressed: () {
        Navigator.of(context).pop();
      }
    );
  }
}
