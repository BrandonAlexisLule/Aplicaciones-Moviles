import 'package:flutter/material.dart';
import 'package:pasteleria/components/inputs.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Realizando un Inicio de Sesión'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(45),
                child: Text('Buenas tardes',
                  style: TextStyle(
                    fontSize: 40, 
                    color: Colors.white, 
                    fontWeight: FontWeight.bold,
                  ),  
                )
              ),
              Container(
                padding: EdgeInsets.only(bottom: 25, left: 25, right: 25),
                child: Inputs(
                  keyboardType: TextInputType.emailAddress,     
                  hintText: 'Escriba su correo electrónico', 
                  iconColor: Colors.white,
                  icono: Icons.home,
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Inputs(
                  keyboardType: TextInputType.visiblePassword,       
                  hintText: 'Escriba su contraseña', 
                  iconColor: Colors.white,
                  icono: Icons.lock,
                ),
              ),
              Text('¿Se te olvidó la contraseña?', 
              style: TextStyle(
                fontSize: 20, 
                color: Colors.white, 
                fontWeight: FontWeight.bold,
                
              ),),
          
              Text('¡Regístrate aquí, es gratis!',
                style: TextStyle(
                  fontSize: 20, 
                  color: Colors.white, 
                  fontWeight: FontWeight.bold,
              ),),
         
              Container(
                margin: EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {}, //no hace nada por el momento
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    foregroundColor: WidgetStateProperty.all(Colors.red),
                    overlayColor: WidgetStateProperty.all(
                      // ignore: deprecated_member_use
                      Colors.pinkAccent.withOpacity(0.3)
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    )

                  ),
                  
                  child: Text('Iniciar sesión', style: TextStyle(fontWeight: FontWeight.w900),),
                ),
              )
            ],    
          ),
        ),
      ),
    );
  }
}