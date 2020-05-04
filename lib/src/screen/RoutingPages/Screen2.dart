import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  void _navigationBack() {
    Navigator.pushNamed(context, '/home');
  }

  void _navigation() {
    Navigator.pushNamed(context, '/project');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Column(
          children: <Widget>[
            Container(
                child: Center(
                    child: FlatButton(
                        onPressed: () {
                          _navigation();
                        },
                        textColor: Colors.white,
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text('Go to Projects'),
                        )))),
            Container(
                child: Center(
                    child: FlatButton(
                        onPressed: () {
                          _navigationBack();
                        },
                        textColor: Colors.white,
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text('Go to Home'),
                        )))),
          ],
        ));
  }
}
