import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Pantalla 4')
              ],
            )
          ],
        ),
      )
    );
  }
}