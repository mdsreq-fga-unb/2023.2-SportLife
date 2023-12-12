import 'package:flutter/material.dart';

class Comunidade extends StatelessWidget {
  const Comunidade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comunidade'),
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
