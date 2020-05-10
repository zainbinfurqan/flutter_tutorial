import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

void _navigate(){
  Navigator.pushNamed(context, '/profile');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home-page"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Center(
              child: FlatButton(
                
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){_navigate();}, child: Center(child: Text("Go to Profile"),))
            ),
          )
        ],
      ),
    );
  }
}
