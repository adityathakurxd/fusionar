import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';
import 'product.dart';
Product product = Product();

class Shop extends StatefulWidget {

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black26,
          elevation: 0,
          title: Text("Model Viewer")
        ),
      body: ModelViewer(
        backgroundColor: Colors.white,
        src: 'assets/chair.glb',
        alt: "A 3D model",
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}

class Shope extends StatelessWidget {
  Shope({this.letter});
  final String letter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black26,
          elevation: 0,
          title: Text("Model Viewer")
      ),
      body: ModelViewer(
        backgroundColor: Colors.white,
        src: letter,
        alt: "A 3D model",
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}


//assets/bed.glb