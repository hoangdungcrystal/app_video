import 'package:flutter/material.dart';

class DetailAddressPage extends StatefulWidget {
  DetailAddressPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DetailAddressPageState createState() => new _DetailAddressPageState();
}

class _DetailAddressPageState extends State<DetailAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
    );
  }
}