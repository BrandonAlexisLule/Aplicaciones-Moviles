import 'package:flutter/material.dart';

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
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text('Lista con animales y sus nombres'),
      ),
      body: Container(
        padding: EdgeInsets.all(0),
        child: ListView.builder(
          // itemCount: Toma el tamaño de la lista
          itemCount: animales.length,
        
          //itemCount: Define como se va a construir cada elemento de la lista 
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.all(10),
              child: ListTile(
                //Content padding: Agrega Padding Interno
                contentPadding: EdgeInsets.all(20),
                tileColor: Colors.grey[200],
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue[600]),
                leading: Image.asset(imagenesPersonalizadas[index], width: 50, height: 50, fit: BoxFit.cover),
                title: Text(animales[index]),
                titleTextStyle: TextStyle(fontSize: 30, color: Colors.blue[600]),
                onTap: () {
                  
                },
                shape: RoundedRectangleBorder(               
                  borderRadius: BorderRadius.circular(5),
                  
                ),
              ),
            );
            
          },

        ),
      )
      );
  }
}

