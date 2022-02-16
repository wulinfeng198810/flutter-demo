import 'dart:math';

import 'package:flutter/material.dart';

class ScrollDemoGridView extends StatefulWidget {
  const ScrollDemoGridView({Key? key}) : super(key: key);

  @override
  _ScrollDemoGridViewState createState() => _ScrollDemoGridViewState();
}

class _ScrollDemoGridViewState extends State<ScrollDemoGridView> {
  final List<Widget> _childrens = [];

  @override
  void initState() {
    for (int i = 0; i < 2; i++) {
      _childrens.add(buildItem(const Icon(Icons.ac_unit)));
      _childrens.add(buildItem(const Icon(Icons.airport_shuttle)));
      _childrens.add(buildItem(const Icon(Icons.all_inclusive)));
      _childrens.add(buildItem(const Icon(Icons.beach_access)));
      _childrens.add(buildItem(const Icon(Icons.cake)));
      _childrens.add(buildItem(const Icon(Icons.free_breakfast)));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return demo2();
  }

  // 纵轴固定数量的GridView
  demo1() {
    return Scaffold(
        appBar: AppBar(title: const Text('纵轴固定数量的GridView')),
        body: GridView(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 50),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                crossAxisCount: 3, //横轴三个子widget
                childAspectRatio: 1.0 //宽高比为1时，子widget
            ),
            children: _childrens));
  }

  // 纵轴子元素固定长度的GridView
  demo2() {
    return Scaffold(
        appBar: AppBar(title: const Text('纵轴子元素固定长度的GridView')),
        body: GridView(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 50),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                maxCrossAxisExtent: 200,
                childAspectRatio: 2.0 //宽高比为2
            ),
            children: _childrens));
  }

  buildItem(Widget widget) {
    int r = Random().nextInt(150)+100;
    int g = Random().nextInt(150)+100;
    int b = Random().nextInt(150)+100;
    return DecoratedBox(
        child: widget,
        decoration: BoxDecoration(color: Color.fromRGBO(r, g, b, 1)));
  }
}
