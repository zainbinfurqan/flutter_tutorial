import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  void _navigateBack() {
    Navigator.pushNamed(context, '/home');
  }

  void _navigateFarword() {
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
              margin: EdgeInsets.all(5),
              height: 50,
              child: Center(
                  child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        _navigateFarword();
                      },
                      child: Center(
                        child: Text("Go to Project"),
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
