import 'package:flutter/material.dart';

Widget myCoolWidget() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.ac_unit,
            ),
            Icon(
              Icons.ac_unit,
            )
          ],
        ),
        Text('Another widget!'),
      ],
    ),
  );
}
