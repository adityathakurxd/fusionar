import 'package:flutter/material.dart';
import 'package:fusionar/home_page.dart';
import 'package:fusionar/catalog_screen.dart';
import 'package:fusionar/shop.dart';
import 'splash_screen.dart';
import 'ar_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/': (context) => HomePage(),
        '/catalog': (context) => Catalog(),
        '/shop': (context) => Shop(),
        '/camera': (context) => ARScreen(),
        '/splash': (context) => Splash(),
      },
    );
  }
}
