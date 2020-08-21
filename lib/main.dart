import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_flutter_sample/DetailWidget.dart';
import 'package:firebase_ml_flutter_sample/UranaiWidget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blueGrey
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('文字起こし君'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _startCamera(),
            _uranai(),
          ],
        ),
      ),
    );
  }

  Widget _startCamera() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    _onPickImageSelected();
                  },
                  child: Text("start camera"),
                )),
          ),
        ],
      ),
    );
  }

  Widget _uranai() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.pinkAccent,
                  onPressed: () {
                    _onUranai();
                  },
                  child: Text("今日の運勢は？"),
                )),
          ),
        ],
      ),
    );
  }
  void _onPickImageSelected() async {

    var imageSource = ImageSource.camera;

    try {
      final file =
      await ImagePicker.pickImage(source: imageSource);
      if (file == null) {
        throw Exception('ファイルを取得できませんでした');
      }

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailWidget(file)));
    } catch (e) {
    }

  }

  void _onUranai() async {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => UranaiWidget())
    );

}
}


