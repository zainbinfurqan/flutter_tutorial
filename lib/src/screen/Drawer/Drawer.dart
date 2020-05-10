import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Text("Drawer Header")),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text("Project"),
            onTap: () {
              Navigator.pushNamed(context, '/project');
            },
          )
        ],
      ),
    );
    //   appBar: AppBar(
    //     title: Center(
    //       child: Text("----HOME----"),
    //     ),
    //   ),
    //   drawer: Drawer(
    //     child: ListView(
    //       children: <Widget>[
    //         DrawerHeader(child: Text("Drawer Header")),
    //         ListTile(
    //           leading: Icon(Icons.person),
    //           title: Text("Profile"),
    //           onTap: (){},
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.file_upload),
    //           title: Text("Project"),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
