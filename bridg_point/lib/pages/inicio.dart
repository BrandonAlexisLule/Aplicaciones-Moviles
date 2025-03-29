import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent[100],
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.menu)
          )
        ],
      ),
    );
  }
}