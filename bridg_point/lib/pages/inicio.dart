import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/fondo.jpg', fit:  BoxFit.cover, height: MediaQuery.of(context).size.height / 2)),
          
          Container(
            color: Color(0xfff4f4f4),
            child: Column(
              children: [
                SizedBox(height: 100),
                Center(
                  child: Center(
                    child: Text('Bienvenido a BrigdePro', style: TextStyle(fontSize: 40, color: Color(0xff006c84), fontWeight: FontWeight.bold)),
                  ),
                ),
                Spacer(),
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
                      child: Text('Iniciar BrigdePro 2025', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),)
                    ),
                  ),
                )
              ]
            ),
          ),
        ]
      ),
    );
  }
}