import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:fusionar/home_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: HomePage(),
        title: Text('AR Based\nShopping App',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
          ),),
        // image: Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Check"),
        loaderColor: Colors.blueAccent
    );
  }
}
