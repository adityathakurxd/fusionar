import 'package:flutter/material.dart';
import 'package:fusionar/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        // '/first': (context) => HistoryScreen(),
        // '/second': (context) => ARScreen(),
        // '/onBoard': (context) => OnBoard(),
      },
    );
  }
}
