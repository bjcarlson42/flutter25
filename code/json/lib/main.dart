import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:json/models/1.dart';
import 'package:json/models/2.dart';
import 'package:json/models/3.dart';
import 'package:json/models/4.dart';
import 'package:json/models/5.dart';
import 'dart:async' show Future;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Future<String> _loadData() async {
  return await rootBundle.loadString('assets/5.json');
}

class _HomeState extends State<Home> {
  // Future loadData() async {
  //   String jsonString = await _loadData();
  //   final jsonResponse = json.decode(jsonString);
  //   One one = new One.fromJson(jsonResponse);
  //   print('${one.name} - ${one.id} - ${one.gender}');
  // }

  // Future loadData() async {
  //   String jsonString = await _loadData();
  //   final jsonResponse = json.decode(jsonString);
  //   Two two = new Two.fromJson(jsonResponse);
  //   print('${two.name} - ${two.classes[0]} - ${two.classes[1]} - ${two.classes[2]}');
  // }

  // Future loadData() async {
  //   String jsonString = await _loadData();
  //   final jsonResponse = json.decode(jsonString);
  //   Three three = new Three.fromJson(jsonResponse);
  //   print('${three.id} - ${three.name} - ${three.property.height} - ${three.property.width}');
  // }

  // Future loadData() async {
  //   String jsonString = await _loadData();
  //   final jsonResponse = json.decode(jsonString);
  //   Four four = new Four.fromJson(jsonResponse);
  //   print('${four.id} - ${four.flightName} - ${four.passenger[1].id} - ${four.passenger[1].checkedBags}');
  // }

  Future loadData() async {
    String jsonString = await _loadData();
    final jsonResponse = json.decode(jsonString);
    Five five = new Five.fromJson(jsonResponse);
    print('${five.classes[0].id} - ${five.classes[0].level} - ${five.classes[0].name}');
  }

  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Examples'),
      ),
      body: Container(
        child: Center(
          child: Text('JSON Examples'),
        ),
      ),
    );
  }
}
