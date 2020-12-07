import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Data {
  final int id;
  final String description;

  Data(this.id, this.description);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing',
      home: Home(
        data: Data(1, 'The description for id 1'),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final Data data;
  Home({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(data.id.toString()),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(
                  data: data,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Data data;
  SecondPage({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(data.description),
        ),
      ),
    );
  }
}
