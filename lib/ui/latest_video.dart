import 'package:flutter/material.dart';
import 'package:app_video/model/video.dart';
import 'package:app_video/ui/video_list.dart';

class LatestVideoPage extends StatefulWidget {
  LatestVideoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LatestVideoPageState createState() => new _LatestVideoPageState();
}

class _LatestVideoPageState extends State<LatestVideoPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5.0, top: 15.0),
          alignment: Alignment.center,
          child: Text("Video được đề xuất", style: TextStyle(color: Colors.blueAccent[400], fontSize: 20.0),),
        ),
        ListVideo(kVideos),
      ],
    );
  }
}