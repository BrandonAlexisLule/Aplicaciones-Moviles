import 'package:flutter/material.dart';
import 'package:providers/providers/actualizar_navegacion_provider.dart';
import 'package:providers/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  //Paso 2. Proveé el estado
  runApp(ChangeNotifierProvider(create: (context) =>
    ActualizarNavegacionProvider(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
