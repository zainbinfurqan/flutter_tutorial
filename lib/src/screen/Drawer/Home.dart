import 'package:flutter/material.dart';
import 'package:new_app/src/screen/Drawer/Drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
      ),
      drawer: HomeDrawer(),
    );
  }
}
