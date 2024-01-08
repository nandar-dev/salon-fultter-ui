import 'package:flutter/material.dart';
import 'package:flutter_ui/HairStudio.dart';
import 'package:flutter_ui/WomenBlow.dart';

import 'Amore.dart';

class AboutSalon extends StatefulWidget {
  @override
  _HairStudioState createState() => _HairStudioState();
}

class _HairStudioState extends State<AboutSalon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAmimation) {
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
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Amore()));
              }),
          title: Center(
              child: Text(
            "About Salon",
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
               
                }),
          ],
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
       
            Center(
              child: Image.asset(
                "assets/aboutsalon.png",
                width: 180,
              ),
            ),
            Center(
                child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/hansohee.jpg"),
            )),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Elisa Tresses /",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "CEO & Founder",
                  style: TextStyle(
                    color: Colors.pink[300],
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "     Aam id vulputate arcu, non iaculis elit. Nullam aliquet hendrerit purus sed venenatis. Nulla facilisi. Vivamus tincidunt lacus eu sem porta molestie.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "      Duis ac scelerisque nibh, in efficitur dui.Nunc vel augue eu purus auctor ultrices. Proin elit nisi, volutpat ac tristique eget, dictum et orci, Sed efficitur felis at metus ultrices, ac lobortis orci viverra.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
