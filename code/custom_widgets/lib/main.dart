import 'package:flutter/material.dart';
import 'package:custom_widgets/my_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widgets',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widgets'),
      ),
      body: Center(
        child: myCoolWidget(),
      ),
    );
  }
}
