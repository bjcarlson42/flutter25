import 'package:flutter/material.dart';
import 'package:folder_structure/screens/home_screen/home_screen.dart';
import 'package:folder_structure/models/data.dart';

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
      home: HomeScreen(data: Data(1, 'Description for Id 1.'),),
    );
  }
}
