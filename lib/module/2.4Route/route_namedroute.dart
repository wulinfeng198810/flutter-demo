import 'package:flutter/material.dart';
import 'package:flutter_demo/module/route_const.dart';

class RouteDemoNamedRoute extends StatelessWidget {
  const RouteDemoNamedRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("命名路由"),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                    RouteConst.routeNamedRouteNextPage,
                    arguments: {'key': 'value111'});
              },
              child: const Text('跳转 二级页面(命名路由)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                    RouteConst.routeNamedRouteNextPageNoRegisterInRoutes,
                    arguments: {'key': 'value222'});
              },
              child: const Text('跳转 二级页面(未在路由表中注册)'),
            )
          ],
        )));
  }
}

class RouteDemoNamedRouteNextPage extends StatelessWidget {
  Map<String, String>? args;

  RouteDemoNamedRouteNextPage({Key? key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('二级页面(命名路由)'),
    );
  }
}
