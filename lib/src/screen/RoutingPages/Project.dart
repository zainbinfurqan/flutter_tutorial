import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  void _navigateBack() {
    Navigator.pushNamed(context, '/home');
  }

  void _navigateBack_() {
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
              margin: EdgeInsets.all(5),
              height: 50,
              child: Center(
                  child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        _navigateBack_();
                      },
                      child: Center(
                        child: Text("Back to Profile"),
                      ))),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(5),
              child: Center(
                  child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        _navigateBack();
                      },
                      child: Center(
                        child: Text("Back to Home"),
                      ))),
            )
          ],
        ));
  }
}
