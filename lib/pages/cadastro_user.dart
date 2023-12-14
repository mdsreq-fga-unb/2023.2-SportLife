import 'package:flutter/material.dart';
import 'package:modernlogintute/components/custom_button.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/components/my_textfield.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:uno/uno.dart';

class CadastroUser extends StatelessWidget {
  CadastroUser({Key? key}) : super(key: key);

  // para realizar requisicao
  final uno = Uno();

  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _nomeResponsavelController = TextEditingController();
  final TextEditingController _nomePacienteController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dataNascimentoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String telefone ="";
  final String nomeResponsavel="";
  final String nomePaciente="";
  final String email="";
  final String dataNascimento="";
  final String password="";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Cadastro de Usuário'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Imagem de background
            Positioned.fill(
              child: Image.asset(
                'lib/images/crianca.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            // Painel
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 150, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                    const Text(
                      'Telefone do responsável:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
                    MyTextField(
                      controller: _telefoneController,
                      hintText: 'Telefone',
                      obscureText: false,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Nome do responsável:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
      
                    MyTextField(
                      controller: _nomeResponsavelController,
                      hintText: 'Nome',
                      obscureText: false,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'E-mail do responsável:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
      
                    MyTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      obscureText: false,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Nome do paciente',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
                   
      
                    MyTextField(
                      controller: _nomePacienteController,
                      hintText: 'Nome',
                      obscureText: false,
                    ),
      
                    const SizedBox(height: 20),

                    const Text(
                      'Data de nascimento do paciente:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
                   
      
                    MyTextField(
                      controller: _dataNascimentoController,
                      hintText: 'xx/yy/zzzz',
                      obscureText: false,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Senha',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                   const SizedBox(height: 10),
      
                    MyTextField(
                      controller: _passwordController,
                      hintText: 'Senha',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),

                  ],
              ),
            ),
          ],
        ),
      ),
     bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(20.0),
  child: CustomButton(
    text: 'Avançar',
    onPressed: () {

        final String telefone = _telefoneController.text;
        final String nomeResponsavel = _nomeResponsavelController.text;
        final String nomePaciente= _nomePacienteController.text;
        final String email= _emailController.text;
        final String dataNascimento= _dataNascimentoController.text;
        final String password= _passwordController.text;

        final json = {
          'telefone' : telefone,
          'nomeResponsavel' : nomeResponsavel,
          'nomePaciente' : nomePaciente,
          'email' : email,
          'dataNascimento' : dataNascimento,
          'password' : password,
        };
        
     
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.bottomSlide,
        title: 'Sucesso',
        desc: 'Você foi cadastrado!',
        btnOkOnPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ).show();
    },
  ),
),
    );
  }
}
