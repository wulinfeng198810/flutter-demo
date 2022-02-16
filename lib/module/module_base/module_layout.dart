import 'package:flutter/material.dart';
import 'package:flutter_demo/module/module_base/module_base.dart';
import 'package:flutter_demo/module/route_const.dart';

class ModuleLayout extends ModuleBase {
  ModuleLayout({Key? key})
      : super(
      key: key,
      title: '布局类组件',
      moduleNames: [
        "线性布局（Row和Column）",
        "弹性布局（Flex）",
        "流式布局（Wrap）",
      ],
      moduleName2RouteMap: {
        "线性布局（Row和Column）": RouteConst.layoutRowAndColumn,
        "弹性布局（Flex）": RouteConst.layoutFlex,
        "流式布局（Wrap）": RouteConst.layoutWrap,
      });
}
