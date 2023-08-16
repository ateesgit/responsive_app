import 'package:flutter/material.dart';

class MyOrientationBuider extends StatefulWidget {
  const MyOrientationBuider({super.key});

  @override
  State<MyOrientationBuider> createState() => _MyOrientationBuiderState();
}

class _MyOrientationBuiderState extends State<MyOrientationBuider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Orientatin"),
      ),
      body: OrientationBuilder(builder: ((context, orientation) {
        final isPortrait= orientation == Orientation.landscape;
        return isPortrait?
     Container(
            width: 200,
            color: Colors.amber,
            child:const Center(child:  Text("Side Bar")),
          ): Container(
            width: 200,
            color: Colors.green,
            child:const Center(child:  Text("Side Bar")),
          );
      }))
    );
  }
}