import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

void main() {
  if (!kIsWeb && Platform.isMacOS) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }

  runApp(new LocalStoragess());
}

class LocalStoragess extends StatefulWidget {
  @override
  _LocalStoragessState createState() => _LocalStoragessState();
}

class _LocalStoragessState extends State<LocalStoragess> {
  final LocalStorage storage = new LocalStorage('todo_app');
  _setToStore() async {
    print("set");
    await storage.setItem("name", "zain");
  }

  _getFromStore() async {
    var a = storage.getItem("name");
    print(a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Storage"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                _setToStore();
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("set to store")),
          FlatButton(
              onPressed: () {
                _getFromStore();
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("get from store")),
        ],
      ),
    );
  }
}
