import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demo/module/6scroll/scroll_pageview.dart' as MyScrollPage;

// 封装一个 keepalive 包装类
class KeepAliveWraper extends StatefulWidget {
  KeepAliveWraper({Key? key, this.keepAlive = true, required this.child}) : super(key: key);
  bool keepAlive = true;
  Widget child;

  @override
  _KeepAliveWraperState createState() => _KeepAliveWraperState();
}

class _KeepAliveWraperState extends State<KeepAliveWraper> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}

class ScrollDemoPageViewKeepAlive extends StatelessWidget {
  const ScrollDemoPageViewKeepAlive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(KeepAliveWraper(child: MyScrollPage.Page(text: '$i')));
    }

    return Scaffold(
        appBar: AppBar(title: const Text("可滚动组件子项缓存KeepAlive")),
        body: PageView(
          // scrollDirection: Axis.vertical, // 滑动方向为垂直方向
          children: children,
        ));
  }
}
