import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Creamos un botón
      body: Center(
      child: ElevatedButton(
        onPressed: (()=>{
          //ir a la página de inicio, cambiamos routeName por un string y ponemos la ruta '/nombre_variable'
            Navigator.pushNamed(context, '/homepage')


        }), child: Text('Regresar'), )),
    );
  }
}