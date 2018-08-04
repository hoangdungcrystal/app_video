import 'package:flutter/material.dart';
import 'package:app_video/model/video.dart';
import 'package:app_video/ui/video_list.dart';
import 'create_playlist_dialog.dart';
import 'package:app_video/ui/photo_page.dart';
import 'package:app_video/ui/address_page.dart';
import 'package:app_video/ui/introduction_page.dart';
import 'package:app_video/ui/latest_video.dart';
import 'package:app_video/ui/register_page.dart';
import 'package:app_video/ui/guide_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
class PageView {

}

class _HomePageState extends State<HomePage> {
  int index = 0;

  var pages = [
    new LatestVideoPage(),
    new AllVideosPage(),
    new PhotoPage(),
    new AddressPage()
  ];
  var appBarPage = [
    new AppBarHome(),
    new AppBarVideo(),
    new AppBarPhoto(),
    new AppBarAddress(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: appBarPage[index],
      ),
       drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                 Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Giới thiệu'),
              onTap: () {
                 Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => IntroductionPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.new_releases),
              title: Text('Hướng dẫn'),
              onTap: () {
                 Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => GuidePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Cài đặt'),
              onTap: () {
                 Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => IntroductionPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Đăng ký'),
              onTap: () {
                 Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => RegisterPage()));
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                 Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => IntroductionPage()));
              },
            ),
            ],
          )),
      body: pages[index],
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.blueAccent[400],
        child: new BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          onTap: (selected) {
            setState(() {
               index = selected;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20.0),
              title: Text("HOME"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              title: Text("VIDEO"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_album),
              title: Text("PHOTOS"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on ),
              title: Text("ADDRESS"),
            ),
          ],
        ),
      ),
    );
  }
}

class AllVideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1.0, color: Colors.black26))
          ),
          child:  GridTileBar(
            leading: IconButton(icon: Icon(Icons.search,color: Colors.black54,)),
            title: Container(
              child: TextFormField(
                autofocus:false,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16.0
                ),
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 8.0),
                  hintText: 'Search...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 16.0, color: Colors.black45),
                ),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.menu, color: Colors.black54,)
            ),
          )
        ),
        ListVideo(kVideos),
      ],
    );
  }
}
class AppBarHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
      title: Text('HOME', style: TextStyle(color: Colors.white),),
      trailing: IconButton(icon: Icon(Icons.notifications,color: Colors.white)),
    );
  }
}
class AppBarVideo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
      title: Text('VIDEO', style: TextStyle(color: Colors.white),),
      trailing: IconButton(icon: Icon(Icons.notifications,color: Colors.white)),
    );
  }
}
class AppBarPhoto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
      title: Text('PHOTO', style: TextStyle(color: Colors.white),),
      trailing: IconButton(icon: Icon(Icons.notifications,color: Colors.white)),
    );
  }
}
class AppBarAddress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
      title: Text('ADDRESS', style: TextStyle(color: Colors.white),),
      trailing: IconButton(icon: Icon(Icons.notifications,color: Colors.white)),
    );
  }
}