import 'package:flutter/material.dart';
import 'dart:math';


/*
* push 传参数到下一页面
* pop 返回时，带数据
* */
class RouteDemo_2_pop_callback extends StatefulWidget {
  const RouteDemo_2_pop_callback({Key? key}) : super(key: key);

  @override
  _RouteDemo_2_pop_callbackState createState() => _RouteDemo_2_pop_callbackState();
}

class _RouteDemo_2_pop_callbackState extends State<RouteDemo_2_pop_callback> {
  String _str = "";

  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(
      onPressed: () async {
        var res = await Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return TipRoute(text: "我是参数");
        }));

        print(res);
        _str = res ?? '无返回数据';
        setState(() {});
      },
      child: Text("跳转到下一页, $_str"),
    ),);
  }
}


class TipRoute extends StatelessWidget {
  TipRoute({
    Key? key,
    required this.text,  // 接收一个text参数
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("二级页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context, "我是 Navigator.pop 返回值");
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
