import 'package:flutter/material.dart';
import 'package:pasteles/components/bottom_custom_navigation_bar.dart';
import 'package:pasteles/constants/constants.dart';
import 'package:pasteles/pages/cart_page.dart';
import 'package:pasteles/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  void navigationBottomBar(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  //paginas
  final List<Widget> _pages = [
    //shop page
    ShopPage(),

    //cart
    CartPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: BottomCustomNavigationBar(
        onTabChange: (index) => navigationBottomBar(index)
      ),
      body: _pages[_selectIndex],
    );
  }
}