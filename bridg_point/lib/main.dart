
import 'package:bridg_point/data/models/residencia_shop.dart';
import 'package:bridg_point/pages/home_page.dart';
import 'package:bridg_point/pages/inicio.dart';
import 'package:bridg_point/providers/actualizar_navegacion_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  //Paso 2. Proveé el estado
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ActualizarNavegacionProvider(),
          
        ),
        ChangeNotifierProvider(
          create: (context) => ResidenciaShop()..cargarResidencia(),
          
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio()
    );
  }
}
