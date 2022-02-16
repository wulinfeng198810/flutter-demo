import 'package:flutter/material.dart';

class RouteEmptyPage extends StatelessWidget {
  const RouteEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: const Text("暂无数据"));
  }
}
