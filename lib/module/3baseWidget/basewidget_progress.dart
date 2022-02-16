import 'package:flutter/material.dart';

class BaseWidgetDemoProgress extends StatelessWidget {
  const BaseWidgetDemoProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("进度指示器"),
    ),
    body:Column(children: [
      //间隔
      const SizedBox(height: 20),
      // 线性进度条高度指定为3
      SizedBox(
        height: 3,
        child: LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
      ),
      //间隔
      const SizedBox(height: 20),
      // 线性进度条高度指定为3
      SizedBox(
        height: 3,
        child: LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        ),
      ),
      //间隔
      const SizedBox(height: 20),
      // 圆形进度条直径指定为100
      SizedBox(
        height: 100,
        width: 100,
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          value: .7,
        ),
      ),
    ],));
  }
}
