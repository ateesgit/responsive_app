import 'package:flutter/material.dart';

class MyOrientation extends StatefulWidget {
  const MyOrientation({super.key});

  @override
  State<MyOrientation> createState() => _MyOrientationState();
}

class _MyOrientationState extends State<MyOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientatin"),
      ),
      body: MediaQuery.of(context).orientation==Orientation.portrait? Container(
            width: 200,
            color: Colors.amber,
            child:const Center(child:  Text("Side Bar")),
          ): Container(
            width: 200,
            color: Colors.green,
            child:const Center(child:  Text("Side Bar")),
          ),
    );
  }
}