// ignore_for_file: non_constant_identifier_names

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
            color: Colors.pink,
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

Divider1() {
  return Column(
    children: const [
      SizedBox(
        height: 18,
      ),
      Divider(
        color: Colors.white,
        thickness: 3,
        indent: 18,
        endIndent: 18,
      ),
      SizedBox(
        height: 14,
      ),
    ],
  );
}

TextModel2(String text) {
  return SizedBox(
    width: double.infinity,
    child: Container(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.yellow,
          fontSize: 22,
        ),
        textAlign: TextAlign.left,
      ),
    ),
  );
}

TextModel3(String text1, String text2) {
  return Container(
      child: Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
              color: Colors.pink,
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  ));
}
