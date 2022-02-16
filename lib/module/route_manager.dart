import 'package:flutter/material.dart';
import 'package:flutter_demo/module/2.4Route/route_simpleexample.dart';
import 'package:flutter_demo/module/2.4Route/route_navigatorpopresult.dart';
import 'package:flutter_demo/module/2.4Route/route_callbackwithfunction.dart';
import 'package:flutter_demo/module/2.4Route/route_namedroute.dart';
import 'package:flutter_demo/module/3baseWidget/basewidget_button.dart';
import 'package:flutter_demo/module/3baseWidget/basewidget_image.dart';
import 'package:flutter_demo/module/3baseWidget/basewidget_form.dart';
import 'package:flutter_demo/module/3baseWidget/basewidget_progress.dart';
import 'package:flutter_demo/module/3baseWidget/basewidget_switch_checkbox_radio.dart';
import 'package:flutter_demo/module/3baseWidget/basewidget_text.dart';
import 'package:flutter_demo/module/4layout/layout_flex.dart';
import 'package:flutter_demo/module/4layout/layout_row_column.dart';
import 'package:flutter_demo/module/4layout/layout_wrap_flow.dart';
import 'package:flutter_demo/module/5box/box_clip.dart';
import 'package:flutter_demo/module/5box/box_container.dart';
import 'package:flutter_demo/module/5box/box_decoratedbox.dart';
import 'package:flutter_demo/module/5box/box_fittedbox.dart';
import 'package:flutter_demo/module/5box/box_padding.dart';
import 'package:flutter_demo/module/5box/box_scaffold.dart';
import 'package:flutter_demo/module/5box/box_transform.dart';
import 'package:flutter_demo/module/6scroll/scroll_animatedlist.dart';
import 'package:flutter_demo/module/6scroll/scroll_customscrollview.dart';
import 'package:flutter_demo/module/6scroll/scroll_gridview.dart';
import 'package:flutter_demo/module/6scroll/scroll_listview.dart';
import 'package:flutter_demo/module/6scroll/scroll_pageview.dart';
import 'package:flutter_demo/module/6scroll/scroll_pageview_keepalive.dart';
import 'package:flutter_demo/module/6scroll/scroll_scrollcontroller.dart';
import 'package:flutter_demo/module/6scroll/scroll_scrollnotification.dart';
import 'package:flutter_demo/module/6scroll/scroll_singlechildscrollview.dart';

import 'package:flutter_demo/module/home.dart';
import 'package:flutter_demo/module/module_base/module_basewidget.dart';
import 'package:flutter_demo/module/module_base/module_box.dart';
import 'package:flutter_demo/module/module_base/module_layout.dart';
import 'package:flutter_demo/module/module_base/module_route.dart';
import 'package:flutter_demo/module/module_base/module_scroll.dart';
import 'package:flutter_demo/module/route_const.dart';

class RouteMgr {
  static const List<String> moduleNames = [
    "2.4 路由管理",
    "3 基础组件",
    "4 布局类组件",
    "5 容器类组件",
    "6 可滚动组件"
  ];

  static const Map<String, String> moduleName2RouteMap = {
    "2.4 路由管理": RouteConst.moduleRoute,
    "3 基础组件": RouteConst.moduleBaseWidget,
    "4 布局类组件": RouteConst.moduleLayout,
    "5 容器类组件": RouteConst.moduleBox,
    "6 可滚动组件": RouteConst.moduleScroll,
  };

  static Map<String, WidgetBuilder> routes(BuildContext context) {

    return {
      RouteConst.homeRoute:(context) => const HomePage(),

      RouteConst.moduleRoute:(context) => ModuleRoute(),
      RouteConst.routeSimpleExample:(context) => const RouteDemoSimpleExample(),
      RouteConst.routeNavigatorPopResult:(context) => const RouteDemoNavigatorPopResult(),
      RouteConst.routeCallbackWithFunction:(context) => const RouteDemoCallbackWithFunction(),
      RouteConst.routeNamedRoute:(context) => const RouteDemoNamedRoute(),
      RouteConst.routeNamedRouteNextPage:(context) {
        //获取路由参数
        var args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
        print(args);
        return RouteDemoNamedRouteNextPage(args: args);
      },

      RouteConst.moduleBaseWidget:(context) => ModuleBaseWidget(),
      RouteConst.baseWidgetText:(context) => const BaseWidgetDemoText(),
      RouteConst.baseWidgetButton:(context) => const BaseWidgetDemoButton(),
      RouteConst.baseWidgetImage:(context) => const BaseWidgetDemoImage(),
      RouteConst.baseWidgetSwitch:(context) => const BaseWidgetDemoSwitch(),
      RouteConst.baseWidgetInput:(context) => BaseWidgetDemoTextFormField(),
      RouteConst.baseWidgetProgressIndicator:(context) => const BaseWidgetDemoProgress(),

      RouteConst.moduleLayout:(context) => ModuleLayout(),
      RouteConst.layoutRowAndColumn:(context) => const LayoutDemoRowAndColumn(),
      RouteConst.layoutFlex:(context) => const LayoutDemoFlex(),
      RouteConst.layoutWrap:(context) => const LayoutDemoWrap(),

      RouteConst.moduleBox:(context) => ModuleBox(),
      RouteConst.boxPadding:(context) => const BoxDemoPadding(),
      RouteConst.boxDecoratedBox:(context) => const BoxDemoDecoratedBox(),
      RouteConst.boxTransform:(context) => const BoxDemoTransform(),
      RouteConst.boxContainer:(context) => const BoxDemoContainer(),
      RouteConst.boxClip:(context) => BoxDemoClip(),
      RouteConst.boxFittedBox:(context) => const BoxDemoFittedBox(),
      RouteConst.boxScaffold:(context) => const BoxDemoScaffold(),

      RouteConst.moduleScroll:(context) => ModuleScroll(),
      RouteConst.scrollSingleChildScrollView:(context) => const ScrollDemoSingleChildScrollView(),
      RouteConst.scrollListView:(context) => const ScrollDemoListView(),
      RouteConst.scrollScrollController:(context) => const ScrollDemoScrollController(),
      RouteConst.scrollScrollNotification:(context) => const ScrollDemoScrollNotification(),
      RouteConst.scrollAnimatedList:(context) => const ScrollDemoAnimatedList(),
      RouteConst.scrollGridView:(context) => const ScrollDemoGridView(),
      RouteConst.scrollPageView:(context) => const ScrollDemoPageView(),
      RouteConst.scrollKeepAlive:(context) => const ScrollDemoPageViewKeepAlive(),
      RouteConst.scrollCustomScrollView:(context) => const ScrollDemoCustomScrollView(),
    };
  }
}