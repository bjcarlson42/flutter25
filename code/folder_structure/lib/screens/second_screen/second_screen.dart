import 'package:flutter/material.dart';
import 'package:folder_structure/components/custom_widget.dart';
import 'package:folder_structure/models/data.dart';
import 'package:folder_structure/screens/second_screen/components/second_page_component.dart';

class SecondScreen extends StatelessWidget {
  final Data data;
  SecondScreen({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Route"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(data.description),
            ),
          ),
          secondPageComponent(),
          customWidget(data.id, data.description),
        ],
      ),
    );
  }
}
