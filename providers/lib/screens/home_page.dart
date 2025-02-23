import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/providers/actualizar_navegacion_provider.dart';
import 'package:providers/screens/screen_2.dart';
import 'package:providers/screens/screen_3.dart';
import 'package:providers/screens/screen_4.dart';
import 'package:providers/widgets/menu_navegacion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Paso 3. Escuchar cambios
    return Consumer<ActualizarNavegacionProvider>(
      builder: (context, value, child)=> Scaffold(
      bottomNavigationBar: MenuNavegacion(),
      body: _HomePage(value: value),
    ));
  }
}

class _HomePage extends StatelessWidget {
  //value es de tipo ActualizarNavegacionProvider
  ActualizarNavegacionProvider value;

  _HomePage({required this.value});

  @override
  Widget build(BuildContext context) {
    switch (value.pageIndex){
      case 0: return Screen2();
      case 1: return Screen3();
      case 2: return Screen4();
      default: return Screen2();
    }
  }
}