import 'package:flutter/material.dart';

class BaseWidgetDemoSwitch extends StatefulWidget {
  const BaseWidgetDemoSwitch({Key? key}) : super(key: key);

  @override
  State<BaseWidgetDemoSwitch> createState() => _BaseWidgetDemoSwitchState();
}

class _BaseWidgetDemoSwitchState extends State<BaseWidgetDemoSwitch> {
  bool _switchState = false;
  bool _checkBoxState = false;
  int _radiogroupValue = 1;

  Widget _radio(int idx, String text) {
    return Container(
      child: Row(
        children: [Radio(value: idx, groupValue: _radiogroupValue, onChanged: (index) {
          print(index);
          setState(() {
            _radiogroupValue = index as int;
          });
        }, activeColor: Colors.white,), Text(text)],
      ),
      width: 100,
      color: Colors.green,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("单选开关和复选框"),
      ),
      body: Column(children: [
        Switch(value: _switchState, onChanged: (bool value) {
          print(value);
          setState(() {
            _switchState = value;
          });
        }),
        Checkbox(value: _checkBoxState, onChanged: (value) {
          print(value);
          setState(() {
            _checkBoxState = value!;
          });
        }),

        _radio(1, "1111"),
        _radio(2, "2222"),
        _radio(3, "3333"),
      ],),
    );
  }
}
