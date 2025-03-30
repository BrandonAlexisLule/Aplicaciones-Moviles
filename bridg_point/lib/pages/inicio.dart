import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff4f4f4),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 100, top: 100),
              child: Center(
                child: Text('Bienvenido a BrigdPro', style: TextStyle(fontSize: 40, color: Color(0xff006c84), fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(13),
              child: OutlinedButton(
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xff00a878),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Ajusta el valor aquí
                  ),
                  side: BorderSide.none
                ),
                child: Container(
                  
                  padding: EdgeInsets.all(15),
                  child: Text('Iniciar BrigdPro 2025', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),)
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}