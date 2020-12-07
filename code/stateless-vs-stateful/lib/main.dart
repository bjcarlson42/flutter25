import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Stateless Vs. Stateful Widgets',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
appBar: AppBar(
  title: Text('Stateless Vs. Stateful Widgets'),
),
body: Center(
  child: Text('Hello, world!'),
),
floatingActionButton: FloatingActionButton(
  child: Icon(Icons.add),
  onPressed: () => {
    print('button pressed.')
  },
),
    );
  }
}
