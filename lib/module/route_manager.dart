import 'package:flutter/material.dart';
import 'package:flutter_demo/module/2.4Route/route_1_demo.dart';
import 'package:flutter_demo/module/2.4Route/route_demo_2_pop_callback.dart';
import 'package:flutter_demo/module/2.4Route/route_demo_3_args_callbackWithFunction.dart';
import 'package:flutter_demo/module/2.4Route/route_demo_4_namedroute.dart';
import 'package:flutter_demo/module/3baseWidget/button_demo.dart';
import 'package:flutter_demo/module/3baseWidget/image_demo.dart';
import 'package:flutter_demo/module/3baseWidget/input_demo.dart';
import 'package:flutter_demo/module/3baseWidget/progress_demo.dart';
import 'package:flutter_demo/module/3baseWidget/switch_demo.dart';
import 'package:flutter_demo/module/3baseWidget/text_demo.dart';
import 'package:flutter_demo/module/4layout/layout_row_column.dart';

import 'package:flutter_demo/module/home.dart';
import 'package:flutter_demo/module/module_base/module_basewidget.dart';
import 'package:flutter_demo/module/module_base/module_layout.dart';
import 'package:flutter_demo/module/module_base/module_route.dart';
import 'package:flutter_demo/module/route_const.dart';

class RouteMgr {
  static const List<String> moduleNames = [
    "2.4 路由管理",
    "3 基础组件"
  ];

  static const Map<String, String> moduleName2RouteMap = {
    "2.4 路由管理": RouteConst.moduleRoute,
    "3 基础组件": RouteConst.moduleBaseWidget,
  };

  static Map<String, WidgetBuilder> routes(BuildContext context) {

    return {
      RouteConst.homeRoute:(context) => const HomePage(),

      RouteConst.moduleRoute:(context) => ModuleRoute(),
      RouteConst.route1Demo:(context) => const Route_1_demo(),
      RouteConst.routeDemo2PopCallback:(context) => const RouteDemo_2_pop_callback(),
      RouteConst.routeDemo3ArgsCallbackWithFunction:(context) => const RouteDemo_3_args_callbackWithFunction(),
      RouteConst.routeDemo4NamedRoute:(context) => const RouteDemo_4_NamedRoute(),
      RouteConst.routeDemo4NamedRouteNextPage:(context) {
        //获取路由参数
        var args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
        print(args);
        return RouteDemo_4_NamedRoute_nextPage(args: args);
      },

      RouteConst.moduleBaseWidget:(context) => ModuleBaseWidget(),
      RouteConst.baseWidgetText:(context) => const BaseWidget_TextDemo(),
      RouteConst.baseWidgetButton:(context) => const BaseWidget_ButtonDemo(),
      RouteConst.baseWidgetImage:(context) => const BaseWidget_ImageDemo(),
      RouteConst.baseWidgetSwitch:(context) => const BaseWidget_SwitchDemo(),
      RouteConst.baseWidgetInput:(context) => const BaseWidget_InputDemo(),
      RouteConst.baseWidgetProgressIndicator:(context) => const BaseWidget_ProgressDemo(),

      RouteConst.moduleLayout:(context) => ModuleLayout(),
      RouteConst.layoutRowAndColumn:(context) => const LayoutDemo_RowAndColumn(),
    };
  }
}