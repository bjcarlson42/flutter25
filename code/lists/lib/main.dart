import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Data {
  int id;
  String name;

  Data({this.id, this.name});
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Data> dataList = [
    //   Data(id: 1, name: 'Name 1'),
    //   Data(id: 2, name: 'Name 2'),
    //   Data(id: 3, name: 'Name 3'),
    // ];

    List<Data> dataList = List<Data>.generate(
      100,
      (i) => Data(id: i, name: 'Name $i'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: Container(
        child: ListView(
          children:
              dataList.map((data) => _buildRow(data.id, data.name)).toList(),
        ),
      ),
    );
  }
}

Widget _buildRow(int id, String name) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
    child: Column(
      children: [
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(id.toString()),
            Text(
              name,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
