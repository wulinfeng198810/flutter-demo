import 'package:flutter/material.dart';
import 'package:flutter_demo/module/module_base/module_base.dart';
import 'package:flutter_demo/module/route_const.dart';

class ModuleBox extends ModuleBase {
  ModuleBox({Key? key})
      : super(
      key: key,
      title: '容器类组件',
      moduleNames: [
        "填充 Padding",
        "装饰容器 DecoratedBox",
        "变换 Transform",
        "Container",
        "剪裁 Clip",
        "空间适配 FittedBox",
        "Scaffold",
      ],
      moduleName2RouteMap: {
        "填充 Padding": RouteConst.boxPadding,
        "装饰容器 DecoratedBox": RouteConst.boxDecoratedBox,
        "变换 Transform": RouteConst.boxTransform,
        "Container": RouteConst.boxContainer,
        "剪裁 Clip": RouteConst.boxClip,
        "空间适配 FittedBox": RouteConst.boxFittedBox,
        "Scaffold": RouteConst.boxScaffold,
      });
}
