import 'package:flutter/material.dart';
import 'package:flutter_demo/module/route_const.dart';
import 'package:flutter_demo/module/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("《Flutter实战 - 第二版》"),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(RouteMgr.moduleName2RouteMap[RouteMgr.moduleNames[index]] ?? RouteConst.emptyPage);
          },
          child: Center(
            child: Text(RouteMgr.moduleNames[index]),
          ),
        );
      }, itemCount: RouteMgr.moduleNames.length),
    );
  }
}
