import 'package:flutter/material.dart';
import 'package:flutter_demo/module/module_base/module_base.dart';
import 'package:flutter_demo/module/route_const.dart';

class ModuleRoute extends ModuleBase {
  ModuleRoute({Key? key})
      : super(
            key: key,
            title: '路由管理',
            moduleNames: [
              "路由简单示例",
              "pop 返回值",
              "函数回调",
              "命名路由",
              "路由生成钩子",
            ],
            moduleName2RouteMap: {
              "路由简单示例": RouteConst.route1Demo,
              "pop 返回值": RouteConst.routeDemo2PopCallback,
              "函数回调": RouteConst.routeDemo3ArgsCallbackWithFunction,
              "命名路由": RouteConst.routeDemo4NamedRoute,
              // "路由生成钩子": RouteConst.,
            });
}
