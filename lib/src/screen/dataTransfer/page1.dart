import 'package:flutter/material.dart';
import 'package:new_app/src/screen/dataTransfer/page2.dart';

class Page_1 extends StatefulWidget {
  @override
  _Page_1State createState() => _Page_1State();
}

class Data {
  int id;
  String name;
  Data({this.id, this.name});
}

class _Page_1State extends State<Page_1> {
  _sendData(id, name) {
    final data = Data(id: id, name: name);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Page_2(data: data)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page-1"),
      ),
      body: Container(
        child: FlatButton(
            onPressed: () {
              _sendData(23, 'zain ahmed');
              // Navigator.pushNamed(context, '/page-2', arguments: data);
            },
            child: Center(child: Text("go to page 2"))),
      ),
    );
  }
}
