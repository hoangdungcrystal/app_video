import 'package:flutter/material.dart';
import 'package:app_video/model/photo.dart';

class IntroductionPage extends StatefulWidget {
  IntroductionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IntroductionPageState createState() => new _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final Photo listPhoto = new Photo(
    photos: [
      'https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg',
      'https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg',
      'https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg',
      'https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg'
    ]
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction Page"),
      ),
    );
  }
}
