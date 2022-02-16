import 'package:flutter/material.dart';

class Route_1_demo extends StatelessWidget {
  const Route_1_demo({Key? key}) : super(key: key);

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
                          return Route_1_demo();
                        },
                        fullscreenDialog: true));
              },
              child: const Text("跳转下一页"))
        ],
      ),
    );
  }
}
