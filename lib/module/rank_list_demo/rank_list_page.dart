import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RankListPage extends StatefulWidget {
  const RankListPage({Key? key}) : super(key: key);

  @override
  _RankListPageState createState() => _RankListPageState();
}

class _RankListPageState extends State<RankListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.red,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // 背景
          Positioned(
              child: Container(
                  width: double.infinity, height: 392, color: Colors.grey)),

          SafeArea(
              child: Column(
            children: [
              // 导航栏
              RankListNavBar(),

              // 周榜/月榜
              CupertinoSegmentedControl(children: {
                0: Text("周榜"),
                1: Text("月榜"),
              }, onValueChanged: (int value) {}),

              // top
              Column(children: [
                Text("上周TOP"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    RankTopWidget(),
                    SizedBox(width: 21),
                    RankTopWidget(),
                    SizedBox(width: 21),
                    RankTopWidget(),
                  ],
                )
              ]),

              // 榜单头
              RankListHeader(),

              // 列表
              Expanded(
                  child: Container(
                    color: Colors.green,
                    child: ListView(
                children: [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                ],
              ),
                  ))
              // 自己
            ],
          )),
        ],
      ),
    ));
  }
}

class RankTopWidget extends StatefulWidget {
  const RankTopWidget({Key? key}) : super(key: key);

  @override
  _RankTopWidgetState createState() => _RankTopWidgetState();
}

class _RankTopWidgetState extends State<RankTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [Icon(Icons.person_pin)]),
        Text("--"),
        Text("ID:----"),
      ],
    );
  }
}

class RankListNavBar extends StatefulWidget {
  const RankListNavBar({Key? key}) : super(key: key);

  @override
  _RankListNavBarState createState() => _RankListNavBarState();
}

class _RankListNavBarState extends State<RankListNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue, height: 44);
  }
}

class RankListHeader extends StatefulWidget {
  const RankListHeader({Key? key}) : super(key: key);

  @override
  _RankListHeaderState createState() => _RankListHeaderState();
}

class _RankListHeaderState extends State<RankListHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 65, color: Colors.yellow);
  }
}

