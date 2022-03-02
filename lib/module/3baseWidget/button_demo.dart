import 'package:flutter/material.dart';

class BaseWidget_ButtonDemo extends StatefulWidget {
  const BaseWidget_ButtonDemo({Key? key}) : super(key: key);

  @override
  State<BaseWidget_ButtonDemo> createState() => _BaseWidget_ButtonDemoState();
}

class _BaseWidget_ButtonDemoState extends State<BaseWidget_ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("按钮"),
      ),
      body: Container(child: Column(
        children: [
          ElevatedButton(onPressed: (){
            print('点击 ElevatedButton');
          }, child: Text('ElevatedButton 按钮')),

          TextButton(onPressed: (){
            print('点击 TextButton');
          }, child: Text('TextButton 按钮'), style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.lightBlueAccent), backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.black)),),

          OutlinedButton(onPressed: (){
            print('点击 OutlinedButton');
          }, child: Text('OutlinedButton 按钮')),

          IconButton(onPressed: (){
            print('点击 IconButton');
            }, icon: Icon(Icons.thumb_up), focusColor: Colors.red, splashColor: Colors.red, highlightColor: Colors.red, color: Colors.green,),

          /** ElevatedButton.icon **********************************************/
          ElevatedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            onPressed: () {  },
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.add),
            label: Text("添加"),
            onPressed: () {  },
          ),
          TextButton.icon(
            icon: Icon(Icons.info),
            label: Text("详情"),
            onPressed: () {  },
          ),
        ],
      ), padding: EdgeInsets.all(10), color: Colors.yellow,),
    );
  }
}

