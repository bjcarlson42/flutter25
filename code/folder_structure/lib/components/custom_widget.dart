import 'package:flutter/material.dart';

Widget customWidget(int id, String description) {
  return Row(
    children: [
      Text(
        id.toString(),
      ),
      Text(description),
    ],
  );
}
