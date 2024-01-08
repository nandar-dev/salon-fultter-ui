import 'package:flutter/material.dart';
import 'package:flutter_ui/Amore.dart';
import 'package:flutter_ui/HairStudio.dart';

class WomensBlow extends StatefulWidget {
  @override
  _HairStudioState createState() => _HairStudioState();
}

class _HairStudioState extends State<WomensBlow> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        
      },
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
                                  begin: Offset(1,0),
                                  end: Offset(0,0),

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
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AboutSalon()));
                }),
          ],
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/Hair.jpg",
                width: 280,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              " \$30",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "WOMEN'S BLOW DRY",
              style: TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "   Professional styling and finishing service \n using a blow dryer and professional styling \n                                   brush",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 280,
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 300,
                  decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                    colors: [Colors.pink[300], Colors.red[300]],
                  )),
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Schedule an Appointment",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontFamily: "Ubuntu-Regular"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
