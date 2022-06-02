import 'package:flutter/material.dart';
import 'package:internship_project/bottom_bar.dart';
import 'package:internship_project/model.dart';

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
                margin: EdgeInsets.only(top: 50),
                child: Stack(
                  children: [
                    Container(
                      height: 325,
                      width: 325,
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
                            width: 325,
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
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.white,
                thickness: 3,
                indent: 18,
                endIndent: 18,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Text(
                        "Achievements",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Current league",
                          style: TextStyle(
                            color: Colors.redAccent,
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
                  TextModel1(42, "League ranking", "11th", 35),
                  SizedBox(
                    height: 20,
                  ),
                  TextModel1(28, "Experience", "2000 xp", 17),
                  SizedBox(
                    height: 22,
                  ),
                  TextModel1(28, "# of wins", "3", 100)
                ],
              ),
            ],
          ),
        ));
  }
}
