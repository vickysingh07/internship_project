import 'package:flutter/material.dart';

class Fourth extends StatefulWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "You are now on the 4 screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
