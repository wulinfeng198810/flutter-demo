import 'package:flutter/material.dart';

class RouteEmptyPage extends StatelessWidget {
  const RouteEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('未找到该页面'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('404', textScaleFactor: 3),
      ),
    );
  }
}
