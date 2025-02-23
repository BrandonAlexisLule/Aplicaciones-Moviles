import 'package:flutter/material.dart';
import 'package:navegacion/providers/update_navigator_bar_provider.dart';
import 'package:navegacion/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => UpdateNavigatorBarProvider(),
    child: const MainApp(),
  ));
}

//
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
