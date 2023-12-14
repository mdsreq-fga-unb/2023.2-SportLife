import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:modernlogintute/screens/calendar_sceen.dart';

class Agenda extends StatefulWidget {
  const Agenda({Key? key}) : super(key: key);

  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('pt_BR', null).then((_) {
      setState(() {
        _isInitialized = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return Container(); // Ou algum indicador de carregamento
    }
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Volta para a página anterior
          },
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: CalendarScreen(),
      backgroundColor: Colors.white,
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Agenda(),
  ));
}
