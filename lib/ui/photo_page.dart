import 'package:flutter/material.dart';
import 'package:app_video/model/photo.dart';

class PhotoPage extends StatefulWidget {
  PhotoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PhotoPageState createState() => new _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
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
    return ListPhotoInfo(kPhotos);
  }
}
class ListPhotoInfo extends StatelessWidget{
  final List<Photo> _photos;

  ListPhotoInfo(this._photos);
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: _photos.map((c) => Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 10.0, color: Colors.black12))
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                alignment: Alignment.centerLeft,
                child: Text(c.namePhoto, style: TextStyle(color: Colors.black87, fontSize: 16.0,),),
              ),
              Container(
                child: Text(c.description),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                  ],
                ),
              ),
            ],
          ),
        )).toList(),
      );
  }
}