import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';

// http, url_launcher, intl, carousel_slider

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Packages',
      home: Home(),
    );
  }
}

void date() {
  var now = new DateTime.now();
  var formatter = new DateFormat.yMMMMd();
  var today = formatter.format(now);
  print(today);
}

void fetchJson() async {
  var response = await http.get('https://jsonplaceholder.typicode.com/posts/1');
  print(convert.jsonDecode(response.body));
}

void launchUrl() async {
  var url = 'https://flutter25.com';
  if (await canLaunch(url) != null) {
    await launch(url);
  } else {
    throw 'could not launch';
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    fetchJson();
    date();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CarouselSlider(
        options: CarouselOptions(height: 400.0),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text(
                    'text $i',
                    style: TextStyle(fontSize: 16.0),
                  ));
            },
          );
        }).toList(),
      )),
    );
  }
}
