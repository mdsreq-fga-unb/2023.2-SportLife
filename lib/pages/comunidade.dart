import 'package:flutter/material.dart';

class Comunidade extends StatefulWidget {
  const Comunidade({Key? key}) : super(key: key);

  @override
  _ComunidadeState createState() => _ComunidadeState();
}

class _ComunidadeState extends State<Comunidade> {
  final List<Noticia> noticias = []; // Lista de notícias

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comunidade'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NovaNoticia()),
              ).then((value) {
                // Atualiza a tela quando uma nova notícia é criada
                if (value != null && value is Noticia) {
                  setState(() {
                    noticias.add(value);
                  });
                }
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(noticias[index].titulo),
            subtitle: Text(noticias[index].descricao),
          );
        },
      ),
    );
  }
}

class Noticia {
  final String titulo;
  final String descricao;

  Noticia({required this.titulo, required this.descricao});

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'descricao': descricao,
    };
  }
}

class NovaNoticia extends StatefulWidget {
  const NovaNoticia({Key? key}) : super(key: key);

  @override
  _NovaNoticiaState createState() => _NovaNoticiaState();
}

class _NovaNoticiaState extends State<NovaNoticia> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Notícia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _tituloController,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _descricaoController,
              decoration: const InputDecoration(
                labelText: 'Descrição',
              ),
              maxLines: null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final String titulo = _tituloController.text;
                final String descricao = _descricaoController.text;

                if (titulo.isNotEmpty && descricao.isNotEmpty) {
                  // Cria um objeto Noticia com os dados inseridos
                  Noticia novaNoticia =
                      Noticia(titulo: titulo, descricao: descricao);

                  // Retorna a nova notícia para a tela anterior
                  Navigator.of(context).pop(novaNoticia.toJson());
                } else {
                  // Adicione um feedback ao usuário para preencher todos os campos
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Preencha todos os campos')),
                  );
                }
              },
              child: const Text('Salvar Notícia'),
            ),
          ],
        ),
      ),
    );
  }
}
