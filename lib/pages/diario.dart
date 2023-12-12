import 'package:flutter/material.dart';

class Diario extends StatelessWidget {
  const Diario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diário'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Volta para a página anterior
          },
        ),
      ),
      body: const Center(
        child: Text(
          'Conteúdo da Página',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
