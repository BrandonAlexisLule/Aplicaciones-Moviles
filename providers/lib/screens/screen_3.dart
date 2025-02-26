import 'package:flutter/material.dart';

//Creo una clase y defino el tipo de datos y nombre de las variables.
class Destino {
  final String destino;
  final String horarioProximo;

  //Creo el constructor
  const Destino(this.destino, this.horarioProximo);

}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        leading: ClipOval(
          child: Image.asset('assets/img/norte.png', width: 40,height: 40, fit: BoxFit.cover,)
        ),
        centerTitle: true,
        title: Text('Viajeros del Norte', style: TextStyle(letterSpacing: 2, color: Colors.white)),
        //Actions es un arreglo quee tiene al IconButton para poner íconos de la aplicación para acceder a la derecha.
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white, 
            onPressed: () {}
          ,)
        ],
      ),
      
      body: Center(
        child: ListView(
          //alinea los elementos en la parte central
                
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child: Text('Mis reservas', style: TextStyle(fontSize: 30)),
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
              elevation: 5,
              child: Container(
                //padding: da espacio a la carta por dentro 
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Destino: ', style: TextStyle(fontSize: 20),),
                        Text('Cancún', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Horario próximo: ', style: TextStyle(fontSize: 20),),
                        Text('Lunes, a las 10:00 am', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ), 
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}