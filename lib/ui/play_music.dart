import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home.dart';

class PlayMusicPage extends StatefulWidget {
  PlayMusicPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PlayMusicPageState createState() => new _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  double _value = 25.0;
  double _discreteValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        elevation: 2.0,
        // title: Text('Play video'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, size: 30.0, color: Colors.white),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.volume_mute),
            title: CupertinoSlider(
              value: _value,
              min: 0.0,
              max: 100.0,
              onChanged: (double value) {
                setState(() {
                  _value = value;
                });
              }
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            height: 200.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.blueAccent[400]),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Icon(Icons.music_note, size: 40.0,color: Colors.blueAccent[700],),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0,),
            alignment: Alignment.center,
            child: Text('Name music', style: TextStyle(fontSize: 20.0),),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            padding: EdgeInsets.only(top: 5.0),
            alignment: Alignment.center,
            child: Text('descriptions', style: TextStyle(fontSize: 15.0),),
          ),
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Slider(
                  value: _value,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              Positioned(
                left: 15.0,
                top: 24.0,
                child: Text('0:00'),
              ),
              Positioned(
                right: 15.0,
                top: 24.0,
                child: Text('4:00'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.fast_rewind ),
                  onPressed: (){},
                ),
              ),
              Container(
                width: 100.0,
                child: MaterialButton(
                  child: Icon(Icons.pause_circle_filled, size: 50.0,),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.fast_forward ),
                  onPressed: (){},
                ),
              ),
            ],
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.menu),
              ),
              trailing: IconButton(
                icon: Icon(Icons.repeat),
              ),
            )
          ),
        ],
      )
    );
  }
}