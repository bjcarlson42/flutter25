// import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';

// void main() => runApp(LogoApp());

// class LogoApp extends StatefulWidget {
//   _LogoAppState createState() => _LogoAppState();
// }

// class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
//   Animation<double> animation;
//   AnimationController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
//     animation = Tween<double>(begin: 0, end: 300).animate(controller)
//     ..addListener(() {
//       setState(() {

//       });
//     });
//     controller.forward();
//   }
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 10),
//         height: animation.value,
//         width: animation.value,
//         child: FlutterLogo(),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'dart:math';

void main() => runApp(AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp>
    with SingleTickerProviderStateMixin {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animations!'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
            ),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              final random = Random();

              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);

              _borderRadius = BorderRadius.circular(
                random.nextInt(200).toDouble(),
              );
            });
          },
        ),
      ),
    ));
  }
}
