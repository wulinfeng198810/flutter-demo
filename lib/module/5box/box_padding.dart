import 'package:flutter/material.dart';

class BoxDemoPadding extends StatelessWidget {
  const BoxDemoPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("填充 Padding"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            child: Padding(
              // 某个方向填充
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 50),
              child: Container(width: 100, height: 50, color: Colors.red),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Padding(
              // 对称方向的填充
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(width: 100, height: 50, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
