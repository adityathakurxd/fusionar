import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Model Viewer")
        ),
      body: ModelViewer(
        backgroundColor: Colors.red,
        src: 'assets/school_desk.glb',
        alt: "A 3D model",
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}
