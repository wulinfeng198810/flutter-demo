import 'package:flutter/material.dart';
import 'dart:math' as math;

class BoxDemoTransform extends StatelessWidget {
  const BoxDemoTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Padding(
        padding: EdgeInsets.all(100),
        child: demo1(),
      ),
    );
  }

  demo1() {
    return Container(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              //默认原点为左上角，左移20像素，向上平移5像素
              child: Transform.translate(
                offset: Offset(-20.0, -5.0),
                child: Text("Hello world"),
              ),
            ),
            const SizedBox(height: 50),
            DecoratedBox(
              decoration:BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                //旋转90度
                angle:math.pi/2 ,
                child: Text("Hello world"),
              ),
            ),
            const SizedBox(height: 50),
            DecoratedBox(
                decoration:BoxDecoration(color: Colors.red),
                child: Transform.scale(
                    scale: 1.5, //放大到1.5倍
                    child: Text("Hello world")
                )
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                    decoration:BoxDecoration(color: Colors.red),
                    child: Transform.scale(scale: 1.5,
                        child: Text("Hello world")
                    )
                ),
                Text("你好", style: TextStyle(color: Colors.yellow, fontSize: 18.0),)
              ],
            )
          ],
        ));
  }

  // 思考题：使用Transform对其子组件先进行平移然后再旋转和先旋转再平移，两者最终的效果一样吗？为什么？
  demo2() {
    // return Container(
    //   color: Colors.grey,
    //   child: DecoratedBox(
    //     decoration:BoxDecoration(color: Colors.red),
    //     //默认原点为左上角，左移20像素，向上平移5像素
    //     child: Transform.rotate(angle: math.pi/2, child: Transform.translate(
    //       offset: Offset(-50.0, 0),
    //       child: Text("Hello world"),
    //     )),
    //   ),
    // );

    return Container(
      color: Colors.grey,
      child: DecoratedBox(
        decoration:BoxDecoration(color: Colors.red),
        //默认原点为左上角，左移20像素，向上平移5像素
        child: Transform.translate(
          offset: Offset(-50.0, 0),
            child: Transform.rotate(angle: math.pi/2, child: Text("Hello world")),
        ),
      ),
    );
  }

  // RotatedBox
  demo3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          //将Transform.rotate换成RotatedBox
          child: RotatedBox(
            quarterTurns: 1, //旋转90度(1/4圈)
            child: Text("Hello world"),
          ),
        ),
        Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
      ],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DecoratedBox(
          decoration:BoxDecoration(color: Colors.red),
          child: Transform.rotate(
            //旋转90度
            angle:math.pi/2 ,
            child: Text("Hello world"),
          ),
        ),
        Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
      ],
    );
  }
}
