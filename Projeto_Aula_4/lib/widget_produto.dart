import 'package:flutter/material.dart';

class WidgetProduto extends StatelessWidget {
  const WidgetProduto({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: const Text('voltar'),
        onPressed: () {
          Navigator.of(context).pop();
        });
  }
}
