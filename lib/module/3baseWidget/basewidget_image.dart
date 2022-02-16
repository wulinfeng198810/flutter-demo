import 'package:flutter/material.dart';

class BaseWidgetDemoImage extends StatelessWidget {
  const BaseWidgetDemoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片及ICON"),
      ),
      body: Column(children: [
        Image.asset('images/icon_live.png'),

        const Text('BoxFit.fill'),
        Container(
          child: Image.network(
            "https://img1.baidu.com/it/u=915090156,3607052882&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            width: 100.0,
            height: 40,
            fit: BoxFit.fill,
          ),
          color: Colors.green,
        ),
        const SizedBox(height: 10),

        const Text('BoxFit.contain'),
        Container(
          child: Image.network(
            "https://img1.baidu.com/it/u=915090156,3607052882&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            width: 100.0,
            height: 40,
            fit: BoxFit.contain,
          ),
          color: Colors.green,
        ),
        const SizedBox(height: 10),

        const Text('BoxFit.none'),
        Container(
          child: Image.network(
            "https://img1.baidu.com/it/u=915090156,3607052882&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            width: 100.0,
            height: 40,
            fit: BoxFit.none,
          ),
          color: Colors.green,
        ),
        const SizedBox(height: 10),

        const Text('BoxFit.fitWidth'),
        Container(
          child: Image.network(
            "https://img1.baidu.com/it/u=915090156,3607052882&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            width: 100.0,
            height: 40,
            fit: BoxFit.fitWidth,
          ),
          color: Colors.green,
        ),
        const SizedBox(height: 10),

        const Text('BoxFit.fitHeight'),
        Container(
          child: Image.network(
            "https://img1.baidu.com/it/u=915090156,3607052882&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            width: 100.0,
            height: 40,
            fit: BoxFit.fitHeight,
          ),
          color: Colors.green,
        ),
        const SizedBox(height: 10),

        const Text('BoxFit.cover'),
        Container(
          child: Image.network(
            "https://img1.baidu.com/it/u=915090156,3607052882&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            width: 100.0,
            height: 40,
            fit: BoxFit.cover,
          ),
          color: Colors.green,
        ),
        const SizedBox(height: 10),

        const Text('BoxFit.scaleDown'),
        Container(
          child: Image.network(
            "https://img1.baidu.com/it/u=915090156,3607052882&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            width: 100.0,
            height: 40,
            fit: BoxFit.scaleDown,
          ),
          color: Colors.green,
        ),
        const SizedBox(height: 10),

      ],),
    );
  }
}
