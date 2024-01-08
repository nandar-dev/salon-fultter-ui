import 'package:flutter/material.dart';
import 'package:flutter_ui/AboutSalon.dart';
import 'package:flutter_ui/WomenBlow.dart';
import 'package:page_transition/page_transition.dart';

import 'Amore.dart';

class HairStudio extends StatefulWidget {
  @override
  _HairStudioState createState() => _HairStudioState();
}

class _HairStudioState extends State<HairStudio> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 18,
              ),
              onPressed: () {
                // Navigator.of(context).push(PageRouteBuilder(
                //     pageBuilder: (context, animation, secondaryAmimation) {
                //   return Amore();
                // }, transitionsBuilder:
                //         (context, animation, secondaryAnimation, child) {
                //   return ScaleTransition(
                //     scale: animation,
                //     child: SlideTransition(
                //       position: animation.drive(
                //         Tween(
                //           begin: Offset(1, 0),
                //           end: Offset(0, 0),
                //         ).chain(CurveTween(curve: Curves.easeInSine)),
                //       ),
                //       child: child,
                //     ),
                   
                //   );
                // }));
                Navigator.push(context, PageTransition(
                  duration: Duration(milliseconds: 600),
                  type: PageTransitionType.fade, child: Amore()));

              }),
          title: Center(
              child: Text(
            "Hair Studio",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          )),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAmimation) {
                    return AboutSalon();
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
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      //  transitionDuration: Duration(milliseconds: 400),
                      pageBuilder: (context, animation, secondaryAmimation) {
                    return WomensBlow();
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
                },
                child: Column(
                  children: <Widget>[
                    Center(
                        child: Text(
                      "EFFORTLESSLY ELEGANT",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Center(child: Image.asset("assets/HairStudioImage1.jpg")),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '''         Quisque ut ligula arcu. Maecenas non  \n    mauris justo. Vestibulum tempor, neque ac \n                  vestibulum tincidunt, urna''',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "     SERVICES WE OFFER",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 12.5,
              ),
              Stack(children: <Widget>[
                // ClipRRect(
                //   borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(15),
                //       bottomRight: Radius.circular(15)),
                //   child:
                Image.asset(
                  "assets/Hair.jpg",
                ),
                // ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 95),
                    child: Text(
                      "Women's Blow Dry",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
