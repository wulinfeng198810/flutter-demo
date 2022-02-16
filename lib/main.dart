import 'package:flutter/material.dart';
import 'package:flutter_demo/module/2.4Route/route_empty_page.dart';
import 'package:flutter_demo/module/rank_list_demo/rank_list_page.dart';
import 'package:flutter_demo/module/route_manager.dart';
import 'module/route_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteConst.homeRoute,
      routes: RouteMgr.routes(context),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String? routeName = settings.name;
          print('Navigator.of(context).pushNamed 未在路由表中注册: ' + (routeName ?? ''));
          // 如果访问的路由页需要登录，但当前未登录，则直接返回登录页路由，
          // 引导用户登录；其它情况则正常打开路由。
          return const RouteEmptyPage();
        });
      },
      // home: RankListPage(),
    );
  }
}