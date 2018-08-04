import 'package:flutter/material.dart';
import 'package:app_video/model/address.dart';
import 'package:app_video/ui/address_detail.dart';

class AddressPage extends StatefulWidget {
  AddressPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AddressPageState createState() => new _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                    hint: Text('Tỉnh',
                        style:
                            TextStyle(color: Colors.grey[900], fontSize: 18.0)),
                    items: <String>['Hà Nội', 'Hải Phòng'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: null,
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text('Huyện',
                          style:
                              TextStyle(color: Colors.grey[900], fontSize: 18.0)),
                      items: <String>['Hà Nội', 'Hải Phòng'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: null,
                  )),
                ),
              ],
            ),
          ),
          ListAddress(kaddresss),
        ],
      ),
    );
  }
}

class ListAddress extends StatelessWidget {
  final List<Address> _address;
  ListAddress(this._address);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: _address
            .map((c) => Container(
                padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black12))),
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      c.area,
                      style: TextStyle(color: Colors.blueAccent[700]),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('- Địa chỉ: ' + c.address),
                      Text('- Thời gian: ' + c.time),
                    ],
                  ),
                  trailing:  Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => DetailAddressPage()));
                  },
                )))
            .toList());
  }
}
