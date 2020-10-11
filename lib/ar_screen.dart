import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;


class ARScreen extends StatefulWidget {
  @override
  _ARScreenState createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {

  ArCoreController arCoreController;

  _onArCoreViewCreated(ArCoreController _arcoreController) {
    arCoreController = _arcoreController;
    _addSphere(arCoreController);
    // _addCyclinder(arCoreController);
  }

  _addSphere(ArCoreController _arcoreController) {
    final material = ArCoreMaterial(color: Colors.black);
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(
        0,
        0,
        -1,
      ),
    );

    _arcoreController.addArCoreNode(node);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("AR Camera"),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }
}

// class for Dialog Box :-
class dialog_box extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("AR Simulator Dialog Box",
        style: TextStyle(
          //fontFamily: Pacifico,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      actions:<Widget> [
        Center(
          child: FlatButton(
            child: Text("Go Back!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29.0,
              ),
            ),
            // height: 40.0,
            textColor: Colors.white,
            color: Colors.black54,
            onPressed: (){
              // link the CamaraPreview :- Gallary
              Navigator.pop(context);
            },
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Center(
          child: FlatButton(
            child: Text("View AR Simulation",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29.0,
              ),),
            textColor: Colors.white,
            color: Colors.black54,
            onPressed: (){
              Navigator.pushNamed(context, '/AR_screen');
            },
            //height: 29.0,
          ),
        ),
      ],
    );
  }
}