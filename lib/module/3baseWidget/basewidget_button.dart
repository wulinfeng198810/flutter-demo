import 'package:flutter/material.dart';

class BaseWidgetDemoButton extends StatefulWidget {
  const BaseWidgetDemoButton({Key? key}) : super(key: key);

  @override
  State<BaseWidgetDemoButton> createState() => _BaseWidgetDemoButtonState();
}

class _BaseWidgetDemoButtonState extends State<BaseWidgetDemoButton> {
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
          }, child: const Text('ElevatedButton 按钮')),

          TextButton(onPressed: (){
            print('点击 TextButton');
          }, child: const Text('TextButton 按钮'), style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.lightBlueAccent), backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.black)),),

          OutlinedButton(onPressed: (){
            print('点击 OutlinedButton');
          }, child: const Text('OutlinedButton 按钮')),

          IconButton(onPressed: (){
            print('点击 IconButton');
            }, icon: const Icon(Icons.thumb_up), focusColor: Colors.red, splashColor: Colors.red, highlightColor: Colors.red, color: Colors.green,),

          /** ElevatedButton.icon **********************************************/
          ElevatedButton.icon(
            icon: const Icon(Icons.send),
            label: const Text("发送"),
            onPressed: () {  },
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("添加"),
            onPressed: () {  },
          ),
          TextButton.icon(
            icon: const Icon(Icons.info),
            label: const Text("详情"),
            onPressed: () {  },
          ),
        ],
      ), padding: const EdgeInsets.all(10), color: Colors.yellow,),
    );
  }
}

