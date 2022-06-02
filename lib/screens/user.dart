import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "You are now on the 5 screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
