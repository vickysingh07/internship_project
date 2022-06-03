import 'package:flutter/material.dart';
import 'package:internship_project/screens/achievements.dart';
import 'package:internship_project/screens/fourth_screen.dart';
import 'package:internship_project/screens/home.dart';
import 'package:internship_project/screens/leaderboard.dart';
import 'package:internship_project/screens/user.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List _pages = [
    const Home(),
    const Achieve(),
    const Leaderboard(),
    const Fourth(),
    const User(),
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: _selectedPage,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.leaderboard,
                  color: Colors.white,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.emoji_people_sharp,
                  color: Colors.white,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/boy_face.jpg"),
                    )),
                label: ""),
          ]),
    );
  }
}
