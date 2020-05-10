import 'package:flutter/material.dart';
import 'package:new_app/src/screen/Drawer/Drawer.dart';

class Project extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Project")),
      ),
      drawer: HomeDrawer(),
    );
  }
}