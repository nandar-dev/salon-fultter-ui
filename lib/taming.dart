import 'package:flutter/material.dart';

import 'Amore.dart';

class Taming extends StatefulWidget {
  @override
  _TamingState createState() => _TamingState();
}

class _TamingState extends State<Taming> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 23,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Amore()));
            }),
        actions: <Widget>[IconButton(icon: Icon(Icons.menu), onPressed: () {})],
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("Hair Taming"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/anne3.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Hair Relax (Deluxe)  800",
                  style: TextStyle(
                      fontSize: 17, color: Colors.grey, letterSpacing: 1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hair Relax (Premium)  500",
                  style: TextStyle(
                      fontSize: 17, color: Colors.grey, letterSpacing: 1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hair Rebond (Deluxe)  800",
                  style: TextStyle(
                      fontSize: 17, color: Colors.grey, letterSpacing: 1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hair Rebond (Premium)  500",
                  style: TextStyle(
                      fontSize: 17, color: Colors.grey, letterSpacing: 1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Traditional Perm (Deluxe)  200",
                  style: TextStyle(
                      fontSize: 17, color: Colors.grey, letterSpacing: 1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Traditional Perm (Premium)  220",
                  style: TextStyle(
                      fontSize: 17, color: Colors.grey, letterSpacing: 1),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.pink)),
                onPressed: () {},
                color: Colors.pinkAccent,
                textColor: Colors.white,
                child: Text(
                  "Schedule an Appointment",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Ubuntu-Regular"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
