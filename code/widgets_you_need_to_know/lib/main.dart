import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// listview, appbar, Image, RaisedButton, Padding, Icon, IconButton, SizedBox

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  var list = ['item 1', 'item 2', 'item 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar Title'),
        elevation: 2.0,
        backgroundColor: Colors.red[300],
        leading: Icon(Icons.ac_unit),
        actions: [
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: null,
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: list.map((e) => Text(e)).toList(),
        ),
        // child: Column(
        //   children: [
        //     Container(
        //       color: Colors.yellow,
        //       child: Padding(
        //         padding: const EdgeInsets.fromLTRB(8.0, 4.0, 3.0, 15.0),
        //         child: Icon(
        //           Icons.block,
        //           color: Colors.blue,
        //           size: 30.0,
        //         ),
        //       ),
        //     ),
        //     IconButton(
        //       icon: Icon(
        //         Icons.access_time,
        //         color: Colors.red,
        //       ),
        //       onPressed: () {
        //         print('i was pressed');
        //       },
        //     ),
        //     RaisedButton(
        //       child: Text('Click me!'),
        //       onPressed: () {},
        //       color: Colors.red,
        //       textColor: Colors.white,
        //       elevation: 20.0,
        //     ),
        //     SizedBox(
        //       height: 10.0,
        //     ),
        //     Image(
        //       image: NetworkImage('https://flutter25.com/code.png'),
        //       fit: BoxFit.fitHeight,
        //       height: 100.0,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
