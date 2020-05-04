import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  void _navigationBack() {
    Navigator.pushNamed(context, '/home');
  }

  void _navigationBack_() {
    Navigator.pushNamed(context, '/profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Projects"),
        ),
        body: Column(
          children: <Widget>[
            Container(
                child: Center(
                    child: FlatButton(
                        onPressed: () {
                          _navigationBack_();
                        },
                        textColor: Colors.white,
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text('Go to Profile'),
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
