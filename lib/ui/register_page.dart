import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Ký'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 25.0),
            padding: EdgeInsets.only(left: 15.0),
            height: 40.0,
            child: new TextFormField(
              autofocus: false,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.person, size: 20.0),
                contentPadding: new EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                hintText: 'Tên đăng nhập',
                hintStyle: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 25.0),
            padding: EdgeInsets.only(left: 15.0),
            height: 40.0,
            child: new TextFormField(
              autofocus: false,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.lock, size: 20.0),
                contentPadding: new EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                hintText: 'Mật khẩu',
                hintStyle: TextStyle(fontSize: 14.0),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 25.0),
            padding: EdgeInsets.only(left: 15.0),
            height: 40.0,
            child: new TextFormField(
              autofocus: false,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.lock, size: 20.0),
                contentPadding: new EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                hintText: 'Nhập lại mật khẩu',
                hintStyle: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 25.0),
            padding: EdgeInsets.only(left: 15.0),
            height: 40.0,
            child: new TextFormField(
              autofocus: false,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.email, size: 20.0),
                contentPadding: new EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Material(
              borderRadius: BorderRadius.circular(4.0),
              shadowColor: Color(0xFF3580ED),
              elevation: 5.0,
              child: MaterialButton(
                minWidth: 200.0,
                height: 44.0,
                color: Color(0xFF3580ED),
                child: Text('ĐĂNG KÝ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0)),
                onPressed: (){},
              ),
            ),
          ),
        ],
      ),
    );
  }
}