import 'package:flutter/material.dart';
import 'package:folder_structure/components/custom_widget.dart';
import 'package:folder_structure/models/data.dart';
import 'package:folder_structure/screens/home_screen/components/home_component.dart';
import 'package:folder_structure/screens/second_screen/second_screen.dart';

class HomeScreen extends StatelessWidget {
  final Data data;
  HomeScreen({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Route'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text(data.id.toString()),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      data: data,
                    ),
                  ),
                );
              },
            ),
          ),
          homePageComponent(),
          customWidget(data.id, data.description),
        ],
      ),
    );
  }
}
