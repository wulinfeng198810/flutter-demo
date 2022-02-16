import 'package:flutter/material.dart';

class ScrollDemoCustomScrollView extends StatefulWidget {
  const ScrollDemoCustomScrollView({Key? key}) : super(key: key);

  @override
  _ScrollDemoCustomScrollViewState createState() =>
      _ScrollDemoCustomScrollViewState();
}

class _ScrollDemoCustomScrollViewState
    extends State<ScrollDemoCustomScrollView> {
  @override
  Widget build(BuildContext context) {
    // return buildTwoListView();
    // return buildTwoSliverList();
    return buildSliverAppBar();
  }

  // 2个list，sliver是各自独立的
  Widget buildTwoListView() {
    var listView = ListView.builder(
      itemCount: 20,
      itemBuilder: (_, index) => ListTile(title: Text('$index')),
    );
    return Scaffold(
        appBar: AppBar(title: const Text("2个list，sliver是各自独立的")),
        body: Column(
          children: [
            Expanded(child: listView),
            Divider(color: Colors.grey),
            Expanded(child: listView),
          ],
        ));
  }

  // 共用一个sliver，合并两个list
  Widget buildTwoSliverList() {
    // SliverFixedExtentList 是一个 Sliver，它可以生成高度相同的列表项。
    // 再次提醒，如果列表项高度相同，我们应该优先使用SliverFixedExtentList
    // 和 SliverPrototypeExtentList，如果不同，使用 SliverList.
    var listView = SliverFixedExtentList(
      itemExtent: 56, //列表项高度固定
      delegate: SliverChildBuilderDelegate(
        (_, index) => ListTile(title: Text('$index')),
        childCount: 10,
      ),
    );
    // 使用
    return Scaffold(
        appBar: AppBar(title: const Text("共用一个sliver，合并两个list")),
        body: CustomScrollView(
          slivers: [
            listView,
            listView,
          ],
        ));
  }

  Widget buildSliverAppBar() {
    // 因为本路由没有使用 Scaffold，为了让子级Widget(如Text)使用
    // Material Design 默认的样式风格,我们使用 Material 作为本路由的根。
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          // AppBar，包含一个导航栏.
          SliverAppBar(
            pinned: true, // 滑动到顶端时会固定住
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              // title: const Text('Demo'),
              background: Image.asset(
                "./imgs/sea.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              //Grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建子widget
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                //创建列表项
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
