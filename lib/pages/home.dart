import 'package:flutter/material.dart';
import 'package:modernlogintute/components/my_button.dart';
import 'package:modernlogintute/pages/conteudos.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/pages/notificacoes.dart';
import 'package:modernlogintute/pages/agenda.dart';
import 'package:modernlogintute/pages/comunidade.dart';
import 'package:modernlogintute/pages/diario.dart';
import 'package:modernlogintute/pages/chat.dart';


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
        actions: [
          IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const Chat()));
              
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage('lib/images/chat.jpeg'),
            ),
          ),
        ],
        
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
                'Menu de Opções',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Notificações'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const Notificacoes()));
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Diario()));
                  
                      },
                       buttonText: 'Diário',
                    ),
      
                    const SizedBox(height: 20),
      
                    MyButton(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Agenda()));
                     
                      },
                       buttonText: 'Agenda', 
                    ),
      
                    const SizedBox(height: 20),
      
                    MyButton(
                     onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Comunidade()));
                       
                      },
                       buttonText: 'Comunidade', 
                    ),
      
                    const SizedBox(height: 20),
      
                    MyButton(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Conteudos()));
                       
                      },
                       buttonText: 'Conteúdos',
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
