import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rutas/screens/product_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings, color: Colors.white),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/img/logo.jpg'),
          )
        ],
        elevation: 2,
        shadowColor: Colors.black,
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Pastelería La Choys',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              'Nuestros especiales del mes de marzo',
              style: TextStyle(fontSize: 30, letterSpacing: 4),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  child: Card(
                    color: Colors.pink[50],
                    elevation: 10,
                    margin: EdgeInsets.all(15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Pastel de chocolate',
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold))),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/img/cake_choco.jpg',
                                fit: BoxFit.cover, width: 350, height: 330),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text('\$243.50 MXN',
                                    style: TextStyle(
                                        color: Colors.purple[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 15, left: 20),
                                child: ElevatedButton(
                                    //cambiar el fondo del botón
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        backgroundColor: Colors.purple[600],
                                        iconColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text('Agregar al carrito',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2)),
                                        Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  child: Card(
                    color: Colors.pink[50],
                    elevation: 10,
                    margin: EdgeInsets.all(15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Pastel de chocolate',
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold))),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/img/cake_choco.jpg',
                                fit: BoxFit.cover, width: 350, height: 330),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text('\$243.50 MXN',
                                    style: TextStyle(
                                        color: Colors.purple[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 15, left: 20),
                                child: ElevatedButton(
                                    //cambiar el fondo del botón
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        backgroundColor: Colors.purple[600],
                                        iconColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text('Agregar al carrito',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2)),
                                        Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  child: Card(
                    color: Colors.pink[50],
                    elevation: 10,
                    margin: EdgeInsets.all(15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Pastel de chocolate',
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold))),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/img/cake_choco.jpg',
                                fit: BoxFit.cover, width: 350, height: 330),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text('\$243.50 MXN',
                                    style: TextStyle(
                                        color: Colors.purple[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 15, left: 20),
                                child: ElevatedButton(
                                    //cambiar el fondo del botón
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        backgroundColor: Colors.purple[600],
                                        iconColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text('Agregar al carrito',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2)),
                                        Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              'Los más buscados',
              style: TextStyle(fontSize: 30, letterSpacing: 4),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  child: Card(
                    color: Colors.pink[50],
                    elevation: 10,
                    margin: EdgeInsets.all(15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Pastel de chocolate',
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold))),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/img/cake_choco.jpg',
                                fit: BoxFit.cover, width: 350, height: 330),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text('\$243.50 MXN',
                                    style: TextStyle(
                                        color: Colors.purple[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 15, left: 20),
                                child: ElevatedButton(
                                    //cambiar el fondo del botón
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        backgroundColor: Colors.purple[600],
                                        iconColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text('Agregar al carrito',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2)),
                                        Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  child: Card(
                    color: Colors.pink[50],
                    elevation: 10,
                    margin: EdgeInsets.all(15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Pastel de chocolate',
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold))),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/img/cake_choco.jpg',
                                fit: BoxFit.cover, width: 350, height: 330),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text('\$243.50 MXN',
                                    style: TextStyle(
                                        color: Colors.purple[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 15, left: 20),
                                child: ElevatedButton(
                                    //cambiar el fondo del botón
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        backgroundColor: Colors.purple[600],
                                        iconColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text('Agregar al carrito',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2)),
                                        Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  child: Card(
                    color: Colors.pink[50],
                    elevation: 10,
                    margin: EdgeInsets.all(15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Pastel de chocolate',
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold))),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/img/cake_choco.jpg',
                                fit: BoxFit.cover, width: 350, height: 330),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text('\$243.50 MXN',
                                    style: TextStyle(
                                        color: Colors.purple[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 15, left: 20),
                                child: ElevatedButton(
                                    //cambiar el fondo del botón
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        backgroundColor: Colors.purple[600],
                                        iconColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text('Agregar al carrito',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2)),
                                        Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
