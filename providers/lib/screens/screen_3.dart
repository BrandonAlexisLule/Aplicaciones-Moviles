import 'package:flutter/material.dart';

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
        child: Column(
          //alinea los elementos en la parte central
          crossAxisAlignment: CrossAxisAlignment.start,       
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child: Text('Mis reservas', style: TextStyle(fontSize: 30)),
            )
          ],
        ),
      )
    );
  }
}