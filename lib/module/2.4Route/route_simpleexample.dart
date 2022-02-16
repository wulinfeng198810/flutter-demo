import 'package:flutter/material.dart';

class RouteDemoSimpleExample extends StatelessWidget {
  const RouteDemoSimpleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return RouteDemoSimpleExample();
                        },
                        fullscreenDialog: true));
              },
              child: const Text("跳转下一页"))
        ],
      ),
    );
  }
}
