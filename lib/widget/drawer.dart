import 'package:flutter/material.dart';
import 'package:flutter_ui/AboutSalon.dart';
import 'package:flutter_ui/HairStudio.dart';
import 'package:flutter_ui/WomenBlow.dart';
import 'package:flutter_ui/taming.dart';
import 'package:flutter_ui/tresses.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 1.2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset("assets/Anne.jpg"),
                // Padding(
                //   padding: const EdgeInsets.only(top:20,left: 130),
                //   child: Text(
                //     'Beauty Salon',
                //     style: TextStyle(
                //         fontFamily: "Ubuntu-Regular",
                //         fontSize: 22,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white),
                //   ),
                // ),
              ],
            ),
            ListTile(
              title: Text('Womens Blow Dry'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WomensBlow()));
              },
            ),
            ListTile(
              title: Text('Hair Studio'),
              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HairStudio()));

              },
            ),
            ListTile(
              title: Text('Tresses'),
              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Tresses()));

              },
            ),
            ListTile(
              title: Text('Hair Taming'),
              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Taming()));

              },
            ),
            ListTile(
              title: Text('About Salon'),
              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutSalon()));

              },
            ),
          ],
        ),
      ),
    );
  }
}
