import 'package:flutter/material.dart';
import 'package:app_video/model/photo.dart';

class GuidePage extends StatefulWidget {
  GuidePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GuidePageState createState() => new _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Hướng dẫn"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.black12))
            ),
            child: ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("1. Kinh nghiệm tương tác"),
              trailing: FlatButton(child: Text("XEM"),),
            ),
          ),
          
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.black12))
            ),
            child: ListTile(
            leading: Icon(Icons.file_upload),
            title: Text("2. Hướng dẫn"),
            trailing: FlatButton(child: Text("XEM"),),
          ),),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.black12))
            ),
            child: ListTile(
            leading: Icon(Icons.file_upload),
            title: Text("3. Cách tăng lượt xem"),
            trailing: FlatButton(child: Text("XEM"),),
          ),)
        ],
      ),
    );
  }
}