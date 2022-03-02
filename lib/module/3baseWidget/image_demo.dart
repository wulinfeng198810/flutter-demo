import 'package:flutter/material.dart';

class BaseWidget_ImageDemo extends StatelessWidget {
  const BaseWidget_ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片及ICON"),
      ),
      body: Column(children: [
        Image.asset('images/icon_live.png'),
        Image.network(
          "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
          width: 100.0,
        )
      ],),
    );
  }
}
