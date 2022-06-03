import 'package:flutter/material.dart';
import 'package:internship_project/model.dart';
import 'package:internship_project/screens/achievements.dart';
import 'package:internship_project/screens/fourth_screen.dart';
import 'package:internship_project/screens/leaderboard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black45,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 2.5, color: Colors.yellow),
                    left: BorderSide(width: 2.5, color: Colors.yellow),
                    right: BorderSide(width: 2.5, color: Colors.yellow),
                    bottom: BorderSide(width: 1.0, color: Colors.yellow),
                  ),
                ),
                margin: EdgeInsets.only(top: 50, left: 18, right: 18),
                child: Stack(
                  children: [
                    Container(
                      height: 325,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        image: AssetImage("assets/images/intern_image.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.57)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Clan name: Lorem lpsum",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "28 members, 5 online",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              )),
              Divider1(),
              Column(
                children: <Widget>[
                  TextModel2("Achievements"),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Current league",
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 20,
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            "assets/images/sheild3.png",
                          ),
                          height: 80,
                          width: 80,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextModel1(42, "League ranking", "11th", 40),
                  SizedBox(
                    height: 20,
                  ),
                  TextModel1(28, "Experience", "2000 xp", 22),
                  SizedBox(
                    height: 22,
                  ),
                  TextModel1(28, "# of wins", "3", 105)
                ],
              ),
              Divider1(),
              TextModel2("Past featured performances"),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 125,
                          width: 125,
                          child: const Image(
                            image: AssetImage("assets/images/girl_head.webp"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Flexible(
                            child: Center(
                          child: Text(
                            "Priya in International Debating League",
                            maxLines: 4,
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 19,
                            ),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 125,
                          width: 125,
                          child: const Image(
                            image: AssetImage("assets/images/girl_head.webp"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Flexible(
                            child: Center(
                          child: Text(
                            "Akshay in Global Quizzing Finals",
                            maxLines: 4,
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 19,
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Achieve()));
                  },
                  child: const Text(
                    "see more",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                )),
              ),
              Divider1(),
              TextModel2("Live clan activities on platform"),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: const Image(
                        image: AssetImage("assets/images/smoke.webp"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 100,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Live trading championship",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600),
                              )))),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: const Image(
                        image: AssetImage("assets/images/smoke.webp"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 100,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Treasure hunt",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600),
                              )))),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Fourth()));
                  },
                  child: const Text(
                    "see more",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                )),
              ),
              Divider1(),
              TextModel2("Clan discussions"),
              const SizedBox(
                height: 20,
              ),
              TextModel3("General thread:", "15 unread messages"),
              TextModel3("(live) Anyone enthu for trading league and many",
                  "10 unread messages"),
              TextModel3("(live) Anyone enthu for trading league and many",
                  "10 unread messages"),
              Container(
                child: Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Leaderboard()));
                  },
                  child: const Text(
                    "see more",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                )),
              ),
              Divider1(),
              TextModel2("Clan members"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
