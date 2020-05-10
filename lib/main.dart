import 'package:flutter/material.dart';
import 'package:new_app/src/screen/Drawer/Home.dart';
import 'package:new_app/src/screen/Drawer/Profile.dart';
import 'package:new_app/src/screen/Drawer/project.dart';
import 'package:new_app/src/screen/RoutingPages/Home.dart';
import 'package:new_app/src/screen/RoutingPages/Profile.dart';
import 'package:new_app/src/screen/RoutingPages/Project.dart';

import 'package:new_app/src/services/api-services/api-services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/project': (context) => Project()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List users = [];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    // getApi();
    // postApi();
    // deleteApi();
    // putApi();
    // getApiWithParams();
    getUSers();
  }

  getUSers() async {
    var _users = await getApi();
    setState(() {
      users = _users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            // decoration: BoxDecoration(border: Border.all(width: 2)),
            child: users.isEmpty
                ? CircularProgressIndicator()
                // ------------ seprate list --------------//
                : GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(users.length, (index) {
                      Border.all(width: 2);
                      var usr = users[index];
                      return Container(
                        height: 100,
                        // decoration: BoxDecoration(border: Border.all(width: 2)),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(width: 2)),
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Center(
                                    child: Text(usr['name']['title'] +
                                        ' ' +
                                        usr['name']['first']),
                                  ),
                                ),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: new NetworkImage(
                                              usr['picture']['thumbnail']))),
                                  // decoration: BoxDecoration(
                                  //     borderRadius:
                                  //         BorderRadius.all(Radius.circular(2))),
                                  // child: Image.network(

                                  //     usr['picture']['thumbnail']),
                                  // child: Image.network(usr['picture']['thumbnail']),
                                )
                                // SizedBox(
                                //   width:
                                //       MediaQuery.of(context).size.width * 0.40,
                                //   child: Text("data"),
                                // )
                              ],
                            )
                          ],
                        ),
                        //  Text(usr['name']['title'] + ' ' + usr['name']['first']),
                      );
                    }),
                  )
            //  ListView.separated(
            //     separatorBuilder: (BuildContext context, int index) =>
            //         Divider(color: Colors.black),
            //     itemCount: users.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       var usr = users[index];
            //       return ListTile(
            //         title: Text(
            //             usr['name']['title'] + ' ' + usr['name']['first']),
            //         leading: CircleAvatar(
            //           child: Text(
            //               usr['name']['first'][0] + usr['name']['last'][0]),
            //         ),
            //       );
            //     },
            //   ),
            // ------------ seprate list --------------//
            )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
