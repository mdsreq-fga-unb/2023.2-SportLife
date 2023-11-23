
import 'package:flutter/material.dart';
import 'package:modernlogintute/components/my_button.dart';
import 'package:modernlogintute/components/my_textfield.dart';
import 'package:modernlogintute/pages/cadastro_job.dart';
import 'package:modernlogintute/pages/cadastro_user.dart';



class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // editor de texto controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // login usuario method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
        
        
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/crianca.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
        
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        
                  // inserir imagem
                 ClipOval(
                   child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('lib/images/nutri.jpg'),
                         
                   ),
                 ),
                  const SizedBox(height: 50),
        
                  // Log in texto
                  const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
        
                  const SizedBox(height: 25),
        
                  // nome de usuario textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Telefone',
                    obscureText: false,
                  ),
        
                  const SizedBox(height: 10),
        
                  // senha textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Senha',
                    obscureText: true,
                  ),
        
                  const SizedBox(height: 10),
        
                  // esqueceu a senha 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Esqueceu a senha?',
                          style: TextStyle(color: Colors.grey[900]),
                        ),
                      ],
                    ),
                  ),
        
                  //Cadastre-se
        
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroUser()));
                         },
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(color: Colors.grey[900]),
                          ),
                        ),
                      ],
                    ),
                   ),
                  // Entrar
                  MyButton(
                    onTap: signUserIn,
                  ),
                  const SizedBox(height: 30),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text(
                        'Acesso a funcionários: Clique',
                          style: TextStyle(color: Colors.white),
                       ),
                    const SizedBox(width: 4),
                    TextButton(
                    onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroJob()));
                   },
                  child: const Text(
                      'AQUI',
                      style: TextStyle(
                      color: Colors.blue,
                     fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ],
)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
