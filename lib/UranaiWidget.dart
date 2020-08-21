import 'package:flutter/material.dart';
import 'dart:math';

class UranaiWidget extends StatefulWidget {
  @override
  _UranaiWidgetState createState() => new _UranaiWidgetState();
}

class _UranaiWidgetState extends State<UranaiWidget> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("今日の運勢は！！")
      ),
      body: Center(
        child: Text(getUnsei(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
      )
    );
  }

  getUnsei() {
    var unseiList = ['大吉', '吉', '中吉', '小吉', '末吉', '凶', '大凶'];
    var _random = new Random();
    return unseiList[_random.nextInt(unseiList.length)];
  }
}