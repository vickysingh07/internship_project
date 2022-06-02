import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "You are now on the 3 screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
