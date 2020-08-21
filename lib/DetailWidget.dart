import 'dart:io';
import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {

  DetailWidget(this._file);
  File _file;

  @override
  _DetailWidgetState createState() => new _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("文字読み取り"),
        ),
        body: Center(
          child: Text("Detail page"),
        )
    );
  }
}