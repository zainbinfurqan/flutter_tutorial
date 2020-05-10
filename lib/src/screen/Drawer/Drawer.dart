import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  void initState() {
    // Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(child: Text("Header")),
        ListTile(
            onTap: () {
              Navigator.popAndPushNamed(context, '/profile');
            },
            leading: Icon(Icons.person),
            title: Text("Profile")),
        ListTile(
            onTap: () {
              Navigator.popAndPushNamed(context, '/project');
            },
            leading: Icon(Icons.file_upload),
            title: Text("Project")),
      ],
    ));
  }
}
