import 'package:flutter/material.dart';
import 'dart:math' as math;

class BoxDemoContainer extends StatelessWidget {
  const BoxDemoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Container(
        constraints: const BoxConstraints.tightFor(width: 200, height: 150),
        margin: const EdgeInsets.only(top: 40, left: 100),
        transform: Matrix4.rotationZ(.2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const RadialGradient(
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98),
            boxShadow: [BoxShadow(color: Colors.black54, offset: Offset(2, 2), blurRadius: 4)]
        ),
        // color: Colors.red,
        alignment: Alignment.center,
        child: const Text(
          "5.20",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
