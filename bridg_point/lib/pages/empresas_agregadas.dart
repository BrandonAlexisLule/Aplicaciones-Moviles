import 'package:flutter/material.dart';

class EmpresasAgregadas extends StatelessWidget {
  const EmpresasAgregadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[100],
        centerTitle: true,
        title: Text('Empresas agregadas'),
      ),
      body: SafeArea(
        
        child: Text('Hola')),
    );
  }
}