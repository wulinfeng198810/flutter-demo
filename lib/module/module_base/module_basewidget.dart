import 'package:flutter/material.dart';
import 'package:flutter_demo/module/module_base/module_base.dart';
import 'package:flutter_demo/module/route_const.dart';

class ModuleBaseWidget extends ModuleBase {
  ModuleBaseWidget({Key? key})
      : super(
      key: key,
      title: '基础组件',
      moduleNames: [
        "文本及样式",
        "按钮",
        "图片及ICON",
        "单选开关/复选框",
        "输入框及表单",
        "进度指示器",
      ],
      moduleName2RouteMap: {
        "文本及样式": RouteConst.baseWidgetText,
        "按钮": RouteConst.baseWidgetButton,
        "图片及ICON": RouteConst.baseWidgetImage,
        "单选开关/复选框": RouteConst.baseWidgetSwitch,
        "输入框及表单": RouteConst.baseWidgetInput,
        "进度指示器": RouteConst.baseWidgetProgressIndicator
      });
}
