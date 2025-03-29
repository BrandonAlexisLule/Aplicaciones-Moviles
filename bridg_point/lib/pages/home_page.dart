import 'package:bridg_point/pages/empresas_disponibles.dart';
import 'package:bridg_point/pages/empresas_agregadas.dart';
import 'package:bridg_point/pages/inicio.dart';
import 'package:bridg_point/providers/actualizar_navegacion_provider.dart';
import 'package:bridg_point/components/menu_navegacion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActualizarNavegacionProvider>(
      builder: (context, value, child) => Scaffold(
        bottomNavigationBar: MenuNavegacion(),
        body: _HomePage(value: value),
    ));
  }
}

class _HomePage extends StatelessWidget {
  ActualizarNavegacionProvider value;

  _HomePage({required this.value});

  @override
  Widget build(BuildContext context) {
    switch (value.paginaIndice){
      case 0: return Inicio();
      case 1: return EmpresasDisponibles();
      case 2: return EmpresasAgregadas();
      default: return Inicio();

    }
  }
}