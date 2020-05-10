import 'package:flutter/material.dart';
import 'package:new_app/src/screen/Drawer/Drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
      ),
      drawer: HomeDrawer(),
    );
  }
}