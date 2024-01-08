import 'package:flutter/material.dart';
import 'package:flutter_ui/widget/drawer.dart';

class Tresses extends StatefulWidget {
  @override
  _TressesState createState() => _TressesState();
}

class _TressesState extends State<Tresses> {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MyDrawer(),
      key: _scaffoldKey,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset("assets/editedgirl.jpg"),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 60,
                  height: 48.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink.withOpacity(0.5),

                          spreadRadius: 50,
                          blurRadius: 70,
                          offset: Offset(0, 7), // changes position of shadow
                        ),
                      ],
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.zero, right: Radius.circular(10))),
                  child: GestureDetector(
                    onTap: (){
                      _scaffoldKey.currentState.openDrawer();
                    },
                    child: Icon(Icons.menu)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Center(
                  child:    Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Column(
                          children: <Widget>[
                            Text(''),
                            Text(''),
                            Text(''),
                          ],
                        ),
                  )
                ),
              ),
            ],
          ),
          SizedBox(
            height: height / 7,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                height: 35,
                                child: Image.asset(
                                  "assets/scissor.png",
                                  color: Colors.pinkAccent,
                                )),
                            SizedBox(height: 4),
                            Text("Hair Studio")
                          ],
                        ),
                        SizedBox(height: 24),
                        Column(
                          children: <Widget>[
                            Container(
                                height: 35,
                                child: Image.asset(
                                  "assets/schedule.png",
                                  color: Colors.pink[300],
                                )),
                            SizedBox(height: 7),
                            Text("Book A Schedule")
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                height: 35,
                                child: Image.asset(
                                  "assets/body.png",
                                  color: Colors.pinkAccent,
                                )),
                            SizedBox(height: 4),
                            Text("Bath&Body")
                          ],
                        ),
                        SizedBox(height: 24),
                        Column(
                          children: <Widget>[
                            Container(
                                height: 40,
                                child: Image.asset(
                                  "assets/salon.png",
                                  color: Colors.pinkAccent,
                                )),
                            SizedBox(height: 3),
                            Text("About Salon ")
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                height: 35,
                                child: Image.asset(
                                  "assets/polish2.png",
                                  // color: Colors.pinkAccent,
                                )),
                            SizedBox(height: 4),
                            Text("Nail Studio")
                          ],
                        ),
                        SizedBox(height: 24),
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.pinkAccent,
                              size: 28,
                            ),
                            SizedBox(height: 10),
                            Text("Team Chat")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
