import 'package:flutter/material.dart';
import 'package:modernlogintute/components/my_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        // Ícone para abrir o Drawer
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu), // Ícone do menu
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Abre o Drawer
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        // Conteúdo do Drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Opções do Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Notificações'),
              onTap: () {
                // Lógica ao selecionar a opção 1
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                // Lógica ao selecionar a opção 2
              },
            ),
            // Adicione mais ListTiles conforme necessário para outras opções
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                
                 ClipOval(
                     child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset('lib/images/nutri.jpg'),
                           
                     ),
                   ),
      
                   const SizedBox(height: 50),
      
                   const Text(
                      'Nome do Paciente',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
      
                    const SizedBox(height: 50),
      
                 MyButton(
                     onTap: () {
                      // Ação quando o botão é pressionado
                  
                      },
                       buttonText: 'Diário', // Texto dinâmico para o botão
                    ),
      
                    const SizedBox(height: 20),
      
                    MyButton(
                     onTap: () {
                      // Ação quando o botão é pressionado
                     
                      },
                       buttonText: 'Agenda', // Texto dinâmico para o botão
                    ),
      
                    const SizedBox(height: 20),
      
                    MyButton(
                     onTap: () {
                      // Ação quando o botão é pressionado
                       
                      },
                       buttonText: 'Comunidade', // Texto dinâmico para o botão
                    ),
      
                    const SizedBox(height: 20),
      
                    MyButton(
                     onTap: () {
                      // Ação quando o botão é pressionado
                       
                      },
                       buttonText: 'Conteúdos', // Texto dinâmico para o botão
                    ),
      
                    const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
