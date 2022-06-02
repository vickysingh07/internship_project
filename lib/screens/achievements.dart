import 'package:flutter/material.dart';

class Achieve extends StatelessWidget {
  const Achieve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "You are now on the 2 screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
