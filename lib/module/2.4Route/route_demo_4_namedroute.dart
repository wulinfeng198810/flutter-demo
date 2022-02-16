import 'package:flutter/material.dart';
import 'package:flutter_demo/module/route_const.dart';

class RouteDemo_4_NamedRoute extends StatelessWidget {
  const RouteDemo_4_NamedRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children: [
      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed(RouteConst.routeDemo4NamedRouteNextPage, arguments: {'key':'value111'});
      }, child: const Text('跳转 二级页面(命名路由)'),),
      ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed(RouteConst.routeDemo4NamedRouteNextPageNoRegisterInRoutes, arguments: {'key':'value222'});
      }, child: const Text('跳转 二级页面(未在路由表中注册)'),)
    ],
    ));
  }
}

class RouteDemo_4_NamedRoute_nextPage extends StatelessWidget {
  Map<String,String>? args;
  RouteDemo_4_NamedRoute_nextPage({Key? key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: const Text('二级页面(命名路由)'),);
  }
}
