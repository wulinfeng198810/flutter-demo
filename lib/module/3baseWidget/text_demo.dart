import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BaseWidget_TextDemo extends StatelessWidget {
  const BaseWidget_TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapGestureRecognizer ges = TapGestureRecognizer();
    ges.onTap = () {
      print('1111');
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("文本及样式"),
      ),
      body: Column(
        children: [
          /******************************************/
          Container(
            child: const Text(
              "Hello world",
              textAlign: TextAlign.left,
            ),
            color: Colors.red,
          ),
          Container(
            child: Text(
              "Hello world! I'm Jack. " * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            color: Colors.green,
          ),
          Container(
            child: const Text(
              "Hello world",
              textScaleFactor: 1.5,
              // textScaleFactor: MediaQueryData(textScaleFactor: 1.0).textScaleFactor
            ),
            color: Colors.blue,
          ),
          Container(
            child: Text(
              "Hello world " * 6, //字符串重复六次
              textAlign: TextAlign.right,
            ),
            color: Colors.orange,
          ),

          /** TextStyle ****************************************/
          Container(
            child: Text(
              "TextStyle Hello world " * 4,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.2,
                  backgroundColor: Colors.green,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted),
            ),
            color: Colors.yellow,
          ),

          /** TextSpan ****************************************/
          Container(
            child: Text.rich(
              TextSpan(children: [
                const TextSpan(text: 'TextSpan refer：'),
                TextSpan(
                    text: 'https://baidu.com',
                    style: const TextStyle(color: Colors.blue),
                    recognizer: ges),
              ]),
              style: const TextStyle(fontSize: 17),
            ),
            color: Colors.lightGreenAccent,
          ),

          /** DefaultTextStyle ****************************************/
          DefaultTextStyle(
            style: TextStyle(color: Colors.brown, fontSize: 20),
            child: Column(
              children: [Text('DefaultTextStyle'), Text('DefaultTextStyle'), Text('DefaultTextStyle', style: TextStyle(color: Colors.teal),)],
            ),
          ),

          /** 导入自定义字体 ****************************************/
        ],
      ),
    );
  }
}
