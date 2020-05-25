import 'package:flutter/material.dart';

class Page_2 extends StatefulWidget {
  // static const routeName = '/page-2';
  final data;
  Page_2({Key key, @required this.data}) : super(key: key);

  @override
  _Page_2State createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    print(args);
    // fun();
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.data.id}'),
      ),
      body: Container(
        child: Text('${widget.data.name}'),
      ),
    );
  }
}
