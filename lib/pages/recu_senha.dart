import 'package:flutter/material.dart';

class RecuSenha extends StatelessWidget {
  const RecuSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperação de Senha'),
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
