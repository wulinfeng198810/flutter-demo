import 'package:flutter/material.dart';
import 'package:flutter_demo/module/module_base/module_base.dart';
import 'package:flutter_demo/module/route_const.dart';

class ModuleScroll extends ModuleBase {
  ModuleScroll({Key? key})
      : super(
      key: key,
      title: '可滚动组件',
      moduleNames: [
        'SingleChildScrollView',
        'ListView',
        '滚动监听及控制',
        '滚动通知',
        'AnimatedList',
        'GridView',
        'PageView与页面缓存',
        '可滚动组件子项缓存KeepAlive',
        'TabBarView',
        'CustomScrollView和Slivers',
        '自定义Sliver',
        '嵌套可滚动组件 NestedScrollView',
      ],
      moduleName2RouteMap: {
        'SingleChildScrollView': RouteConst.scrollSingleChildScrollView,
        'ListView': RouteConst.scrollListView,
        '滚动监听及控制': RouteConst.scrollScrollController,
        '滚动通知': RouteConst.scrollScrollNotification,
        'AnimatedList': RouteConst.scrollAnimatedList,
        'GridView': RouteConst.scrollGridView,
        'PageView与页面缓存': RouteConst.scrollPageView,
        '可滚动组件子项缓存KeepAlive': RouteConst.scrollKeepAlive,
        'TabBarView': RouteConst.scrollTabBarView,
        'CustomScrollView和Slivers': RouteConst.scrollCustomScrollView,
        '自定义Sliver': RouteConst.scrollCustomSliver,
        '嵌套可滚动组件 NestedScrollView': RouteConst.scrollNestedScrollView,
      });
}
