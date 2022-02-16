import 'package:flutter/material.dart';

class BoxDemoDecoratedBox extends StatelessWidget {
  const BoxDemoDecoratedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("装饰容器 DecoratedBox"),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange.shade700]), //背景渐变
                  borderRadius: BorderRadius.circular(1000), //圆角
                  boxShadow: const [
                    //阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0)
                  ]
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                child: Text(
                  "登 录",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ))),
    );
  }
}
