
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui/HairStudio.dart';
import 'package:flutter_ui/widget/drawer.dart';


class Amore extends StatefulWidget {
  @override
  _AmoreState createState() => _AmoreState();
}

class _AmoreState extends State<Amore> {
      // ScrollController _scroll = new ScrollController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
        // Timer(Duration(milliseconds: 1000), () => _scroll.jumpTo(_scroll.position.maxScrollExtent));

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(child: Image.asset("assets/mainlogo.png")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                ),
                                child: Container(
                                  width: 60,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.zero,
                                          right: Radius.circular(10))),
                                  child: GestureDetector(
                                      onTap: () {
                                        _scaffoldKey.currentState.openDrawer();
                                      },
                                      child: Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                ),
                                child: Container(
                                  width: 60,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.zero,
                                          left: Radius.circular(10))),
                                  child: GestureDetector(
                                      onTap: () {
                                        // _scaffoldKey.currentState.openDrawer();
                                      },
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.black54,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100, left: 25),
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              "assets/icon1.png",
                              color: Colors.black12,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 220, left: 270),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Transform.rotate(
                                  angle: 0.4,
                                  child: Image.asset(
                                    "assets/icon2.png",
                                    color: Colors.black12,
                                  )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 300, left: 210),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Transform.rotate(
                                  angle: -0.4,
                                  child: Image.asset(
                                    "assets/nail_polish.png",
                                    color: Colors.black12,
                                  )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 100, left: 250),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Transform.rotate(
                                  angle: 0.4,
                                  child: Image.asset(
                                    "assets/icon3.png",
                                    color: Colors.black12,
                                  )),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 260, left: 30),
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              "assets/scissor.png",
                              color: Colors.black12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 150),
                          child: Transform.rotate(
                            angle: 0.0,
                            child: Container(
                              height: 65,
                              width: 65,
                              child: Image.asset(
                                "assets/bee.png",
                                color: Colors.black12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAmimation) {
                          return HairStudio();
                        }, transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return ScaleTransition(
                            scale: animation,
                            child: SlideTransition(
                              position: animation.drive(
                                Tween(
                                  begin: Offset(1, 0),
                                  end: Offset(0, 0),
                                ).chain(CurveTween(curve: Curves.easeOutCubic)),
                              ),
                              child: child,
                            ),
                            // scale: animation.drive(
                            //   Tween(begin: 0.7, end: 1.0)
                            //       .chain(CurveTween(curve: Curves.easeOutCubic)),

                            // ),
                            // child: child,
                          );
                        }));
                      });

                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.upToDown,
                      //         child: HairStudio()));
                    },
                    child: Container(
                      height: 280,
                      child: ListWheelScrollView(
                        
                        // controller: _scroll,
                          diameterRatio: 2.5,
                          squeeze: 1.07,
                          // clipToSize: false,

                          physics: FixedExtentScrollPhysics(),
                          itemExtent: 250,
                          // itemExtent: height/2,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: GestureDetector(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xff7986cb),
                                        Colors.indigo
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 30),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Aliza Beauty Salon",
                                              style: TextStyle(
                                                  fontSize: 23,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Mogok,12th street,Second floor.",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Container(
                                              height: 60,
                                              width: 60,
                                              child: Image.asset(
                                                "assets/icon1.png",
                                                color: Colors.black26,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Container(
                                  height: 200,
                                  width: width,
                                  decoration: const BoxDecoration(
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.black26,
                                    //     spreadRadius: 10,
                                    //     blurRadius: 7,
                                    //     offset: Offset(
                                    //         0, 7), // changes position of shadow
                                    //   ),
                                    // ],
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xffea80fc),
                                        Colors.purpleAccent,
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 30),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "ZuNo Beauty Salon",
                                              style: TextStyle(
                                                  fontSize: 23,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Kyat Pyin,5th street,Ground floor.",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Container(
                                              height: 60,
                                              width: 60,
                                              child: Transform.rotate(
                                                  angle: 0.4,
                                                  child: Image.asset(
                                                    "assets/icon2.png",
                                                    color: Colors.black26,
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  // ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Container(
                                height: 200,
                                width: width,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xfffdd853),
                                      Color(0xfffbc02d),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 30),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "DHZ Beauty Salon",
                                            style: TextStyle(
                                                fontSize: 23,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Mandalay,75th street,Third floor. ",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            child: Transform.rotate(
                                                angle: 6,
                                                child: Image.asset(
                                                  "assets/icon3.png",
                                                  color: Colors.black26,
                                                )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xff7986cb),
                                      Colors.indigo
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 30),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Aliza Beauty Salon",
                                            style: TextStyle(
                                                fontSize: 23,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Mogok,12th street,Second floor.",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            child: Image.asset(
                                              "assets/icon1.png",
                                              color: Colors.black26,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Container(
                                  height: 200,
                                  width: width,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xffea80fc),
                                        Colors.purpleAccent,
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 30),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "ZuNo Beauty Salon",
                                              style: TextStyle(
                                                  fontSize: 23,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Kyat Pyin,5th street,Ground floor.",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Container(
                                              height: 60,
                                              width: 60,
                                              child: Transform.rotate(
                                                  angle: 0.4,
                                                  child: Image.asset(
                                                    "assets/icon2.png",
                                                    color: Colors.black26,
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Container(
                                height: 200,
                                width: width,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xfffdd853),
                                      Color(0xfffbc02d),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 30),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "DHZ Beauty Salon",
                                            style: TextStyle(
                                                fontSize: 23,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Mandalay,75th street,Third floor. ",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            child: Transform.rotate(
                                                angle: 6,
                                                child: Image.asset(
                                                  "assets/icon3.png",
                                                  color: Colors.black26,
                                                )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
