import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomCustomNavigationBar extends StatelessWidget {

  final void Function(int)? onTabChange;
  const BottomCustomNavigationBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GNav(
        onTabChange: onTabChange,
        color: Colors.black,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.black,
        tabBorderRadius: 20,
        tabActiveBorder: Border.all(color: Colors.black),
        tabs: [
          GButton(icon: Icons.home, text: 'Pastelería'),
          GButton(icon: Icons.shop, text: 'Comprar')
        ]

      ),
    );
  }
}