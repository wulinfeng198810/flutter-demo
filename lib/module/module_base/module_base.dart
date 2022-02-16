import 'package:flutter/material.dart';
import 'package:flutter_demo/module/route_const.dart';

abstract class ModuleBase extends StatelessWidget {
  final String title;
  final List<String> moduleNames;
  final Map<String, String> moduleName2RouteMap;

  const ModuleBase(
      {Key? key,
      this.title = '',
      this.moduleNames = const <String>[],
      this.moduleName2RouteMap = const <String, String>{}})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                    moduleName2RouteMap[moduleNames[index]] ??
                        RouteConst.emptyPage);
              },
              child: Center(
                child: Text(moduleNames[index]),
              ),
            );
          },
          itemCount: moduleNames.length),
    );
  }
}
