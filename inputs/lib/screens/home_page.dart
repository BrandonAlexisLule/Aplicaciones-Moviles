import 'package:flutter/material.dart';
import 'package:inputs/widgets/input_personalizado.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Creación de listas de imágenes
  List<String> imagenesPersonalizadas = [
    'assets/img/buey.jpg',
    'assets/img/burro.jpg',
    'assets/img/caballo.jpg',
    'assets/img/cabra.png',
    'assets/img/mula.jpg',
    'assets/img/toros.jpg',
  ];


  //Creación de listas
  List<String> animales = ['Buey', 'Caballo', 'Burro', 'Cabra', 'Toro', 'Mula'];
  List<dynamic> numeros = [1, 2, 3, 4, 5, '6'];
  List<Widget> widgets = [Text('hola1'), Text('Hola2')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: InputPersonalizado(
                labelText: 'Dirección',              
                hintText: 'Escribe tu dirección',
                iconColor: Colors.red,
                icono: Icons.home,
                suffixIcon: Icons.remove_red_eye_sharp,
              ),

            ),
            
            InputPersonalizado(
              labelText: 'Nombre',
              hintText: 'Escribe tu nombre',
              iconColor: Colors.red,
              icono: Icons.home,
              suffixIcon: Icons.remove_red_eye_sharp,
            ),

            InputPersonalizado(
              labelText: 'Teléfono',
              hintText: 'Número de teléfono',
              iconColor: Colors.red,
              icono: Icons.home,
              suffixIcon: Icons.remove_red_eye_sharp,
              keyboardType: TextInputType.number,
            ),
            
          ],
        ),
      ),
    );
  }  


}

