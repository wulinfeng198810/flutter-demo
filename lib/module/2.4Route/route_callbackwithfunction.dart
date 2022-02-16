import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

/*
* push 传参数到下一页面
* Function 回调数据 到上一页面
* */
class RouteDemoCallbackWithFunction extends StatefulWidget {
  const RouteDemoCallbackWithFunction({Key? key}) : super(key: key);

  @override
  _RouteDemoCallbackWithFunctionState createState() => _RouteDemoCallbackWithFunctionState();
}

class _RouteDemoCallbackWithFunctionState extends State<RouteDemoCallbackWithFunction> {
  int _cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("函数回调"),
    ),
    body: Center(child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return TipRoute(text: "我是参数", didSelectedCallback: (int cnt) {
            print(cnt);
            _cnt = cnt;
            setState(() {});
          });
        }));
      },
      child: Text("跳转到下一页, ($_cnt)"),
    ),));
  }
}


class TipRoute extends StatefulWidget {
  TipRoute({
    Key? key,
    required this.text,  // 接收一个text参数
    required this.didSelectedCallback
  }) : super(key: key);
  final String text;
  Function didSelectedCallback;

  @override
  State<TipRoute> createState() => _TipRouteState();
}

class _TipRouteState extends State<TipRoute> {
  bool _didClickBack = false;
  int _callbackNum = -1;

  @override
  void deactivate() {
    widget.didSelectedCallback(_didClickBack ? _callbackNum : 1000);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    _didClickBack = false;
    _callbackNum = -1;

    return Scaffold(
      appBar: AppBar(
        title: Text("二级页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(widget.text),
              ElevatedButton(
                onPressed: (){
                  _didClickBack = true;
                  _callbackNum = Random().nextInt(100);
                  Navigator.pop(context, "我是返回值");
                },
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
