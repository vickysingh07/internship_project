import 'package:flutter/material.dart';

TextModel1(double size, String text1, String text2, double right2) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: right2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: const TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: Colors.yellow,
            fontSize: size,
          ),
        ),
      ],
    ),
  );
}
