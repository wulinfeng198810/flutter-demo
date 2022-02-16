import 'package:flutter/material.dart';

class BoxDemoFittedBox extends StatelessWidget {
  const BoxDemoFittedBox({Key? key}) : super(key: key);

  Widget wContainer(BoxFit boxFit) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
      child: FittedBox(
        fit: boxFit,
        // 子容器超过父容器大小
        child: Container(width: 60, height: 70, color: Colors.blue),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Center(
        child: Column(
          children: [
            wContainer(BoxFit.none),
            Text('Wendux'),
            wContainer(BoxFit.contain),
            Text('Flutter中国'),
          ],
        ),
      ),
    );
  }
}
