import 'package:flutter/material.dart';
import 'package:app_video/model/video.dart';
import 'package:app_video/ui/create_playlist_dialog.dart';
import 'package:app_video/ui/add_to_playlist.dart';

class ListVideo extends StatelessWidget {
  final List<Video> _videos;
  ListVideo(this._videos);

  static const int NEW_PLAYLIST = 1;
  static const int ADD_TO_PLAYLIST = 2;
  static const int DELETE_VIDEO = 3;

  void initState() {
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      padding: EdgeInsets.only(bottom: 10.0,top: 10.0),
      child: IgnorePointer(
        child: GridView.count(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
          childAspectRatio: 1.0,
          children: _videos.map((c) => Container(
            margin: EdgeInsets.only(left:2.5, right: 2.5, bottom:5.0),
            decoration: BoxDecoration(
              color: Colors.black12,
              boxShadow: [
                new BoxShadow (
                color: Colors.black38,
                offset: new Offset(0.0,2.0),
                blurRadius: 2.0,
              )]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: Colors.black,
                      // border: Border.all(width: 1.0, color: Colors.grey[300]),
                      image: new DecorationImage(
                        image: new NetworkImage(c.thumbnailLink),
                        fit: BoxFit.cover
                        ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.play_arrow, color: Colors.white, size: 35.0,),
                    )
                  ),
                ),
                  Container(
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Text(c.nameVideo, overflow: TextOverflow.ellipsis,maxLines: 2,),
                  )
                ],
            ),
              
            )
          ).toList(),
        )
      ),
    );
  }
}