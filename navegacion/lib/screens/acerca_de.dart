import 'package:flutter/material.dart';

class AcercaDe extends StatelessWidget {
  const AcercaDe({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.purple,
          //expandedHeight: Sirve para bajar elementos
          expandedHeight: 300,
          //elevation: Para que el texto quede plano
          elevation: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sala 2', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.yellow)),
                Text('MAÑANA NO HAY CLASES', style: TextStyle(color: Colors.yellow, fontSize: 25)),
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}

