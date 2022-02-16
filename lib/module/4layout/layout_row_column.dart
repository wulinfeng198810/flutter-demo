import 'package:flutter/material.dart';

class LayoutDemoRowAndColumn extends StatelessWidget {
  const LayoutDemoRowAndColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("线性布局（Row和Column）"),
      ),
      body: Container(color: Colors.grey, child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 100, height: 40, color: Colors.red,),
          Container(width: 200, height: 40, color: Colors.green,),
          Container(width: 150, height: 40, color: Colors.blue,),
        ],
      ),),
    );
  }
}
