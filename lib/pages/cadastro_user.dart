import 'package:flutter/material.dart';
import 'package:modernlogintute/components/custom_button.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/components/my_textfield.dart';

class CadastroUser extends StatelessWidget {
   CadastroUser({Key? key}) : super(key: key);

   final cpfController = TextEditingController();

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Stack(
          children: [
            // Imagem de background
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/crianca.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Painel
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'CPF do responsável:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'CPF',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Nome do responsável:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Nome',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'E-mail do responsável:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Email',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Nome do paciente',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
                   
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Nome',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Data de nascimento do paciente:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
                   
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'xx/yy/zzzz',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Senha',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                   const SizedBox(height: 10),
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Senha',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Confirmação de senha:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Senha',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 10),
      
      
      
                  ],
                ),
              ),
            ),
            // Botão Voltar
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CustomButton(
                  text: 'Voltar',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}