import 'package:flutter/material.dart';

class BoxDemoScaffold extends StatefulWidget {
  const BoxDemoScaffold({Key? key}) : super(key: key);

  @override
  State<BoxDemoScaffold> createState() => _BoxDemoScaffoldState();
}

class _BoxDemoScaffoldState extends State<BoxDemoScaffold> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        title: const Text("App Name"),
        actions: <Widget>[
          //导航栏右侧菜单
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: const Text("返回上一页", maxLines: 1),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(right: 15),
              ))
        ],
      ),
      drawer: const MyDrawer(), //抽屉
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: const Icon(Icons.add),
          onPressed: () {}),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _childrens = const [
      ListTile(
        leading: Icon(Icons.add),
        title: Text('Add account'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Manage accounts'),
      )
    ];

    return Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "images/app-icon.png",
                        width: 80,
                      ),
                    ),
                  ),
                  const Text(
                    "Wendux",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ElevatedButton(
                        onPressed: () {
                          print("$index");
                        },
                        child: _childrens[index]);
                  },
                  itemCount: _childrens.length),
            ),
          ],
        )
        // MediaQuery.removePadding(
        //   context: context,
        //   //移除抽屉菜单顶部默认留白
        //   removeTop: true,
        //   child: ,
        // ),
        );
  }
}
