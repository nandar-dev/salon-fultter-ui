
import 'package:flutter/material.dart';
import 'package:flutter_ui/Amore.dart';

import 'carousel.dart';



void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselDemo();
  }
}








// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_ui/widget/drawer.dart';
// import 'HairStudio.dart';
// import 'customIcons.dart';
// import 'data.dart';
// import 'dart:math';

// void main() => runApp(MaterialApp(
//       home: MyApp(),
//       debugShowCheckedModeBanner: false,
//     ));

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// var cardAspectRatio = 12.0 / 16.0;
// var widgetAspectRatio = cardAspectRatio * 1.2;

// class _MyAppState extends State<MyApp> {
//   var currentPage = images.length - 1.0;
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> title = [
//       InkWell(
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => HairStudio()));
//           },
//           child: Container(
//             color: Colors.blue,
//           )),
//       Container(
//         color: Colors.pink,
//       ),
//       Container(
//         color: Colors.yellow,
//       ),
//     ];

//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     PageController controller = PageController(initialPage: images.length - 1);
//     controller.addListener(() {
//       setState(() {
//         currentPage = controller.page;
//       });
//     });

//     return Scaffold(
//       key: _scaffoldKey,
//       drawer: MyDrawer(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(child: Image.asset("assets/mainlogo.png")),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(left: 0, top: 20),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(0),
//                         ),
//                         child: Container(
//                           width: 60,
//                           height: 48.0,
//                           decoration: BoxDecoration(
//                               color: Colors.pinkAccent,
//                               borderRadius: BorderRadius.horizontal(
//                                   left: Radius.zero,
//                                   right: Radius.circular(10))),
//                           child: GestureDetector(
//                               onTap: () {
//                                 _scaffoldKey.currentState.openDrawer();
//                               },
//                               child: Icon(
//                                 Icons.menu,
//                                 color: Colors.white,
//                               )),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 0, top: 20),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(0),
//                         ),
//                         child: Container(
//                           width: 60,
//                           height: 48.0,
//                           decoration: BoxDecoration(
//                               color: Colors.transparent,
//                               borderRadius: BorderRadius.horizontal(
//                                   right: Radius.zero,
//                                   left: Radius.circular(10))),
//                           child: GestureDetector(
//                               onTap: () {
//                                 // _scaffoldKey.currentState.openDrawer();
//                               },
//                               child: Icon(
//                                 Icons.search,
//                                 color: Colors.black54,
//                               )),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 70),
//                   child: Container(
//                     height: 60,
//                     width: 60,
//                     child: Image.asset(
//                       "assets/icon1.png",
//                       color: Colors.black12,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                     padding: const EdgeInsets.only(top: 200, left: 250),
//                     child: Container(
//                       height: 60,
//                       width: 60,
//                       child: Transform.rotate(
//                           angle: 0.4,
//                           child: Image.asset(
//                             "assets/icon2.png",
//                             color: Colors.black12,
//                           )),
//                     )),
//                 Padding(
//                     padding: const EdgeInsets.only(top: 70, left: 250),
//                     child: Container(
//                       height: 60,
//                       width: 60,
//                       child: Transform.rotate(
//                           angle: 0.4,
//                           child: Image.asset(
//                             "assets/icon3.png",
//                             color: Colors.black12,
//                           )),
//                     )),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 220, left: 20),
//                   child: Container(
//                     height: 60,
//                     width: 60,
//                     child: Image.asset(
//                       "assets/scissor.png",
//                       color: Colors.black12,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20, left: 150),
//                   child: Transform.rotate(
//                     angle: 0.7,
//                     child: Container(
//                       height: 65,
//                       width: 65,
//                       child: Image.asset(
//                         "assets/salon.png",
//                         color: Colors.black12,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Transform.rotate(
//               // angle: 4.72,
//               angle: 1.57,
//               // angle: 0,

//               child: Stack(
//                 children: <Widget>[
//                   CardScrollWidget(currentPage),
//                   Positioned.fill(
//                     child: PageView.builder(
//                       dragStartBehavior: DragStartBehavior.down,
//                       pageSnapping: false,
//                       itemCount: title.length,
//                       controller: controller,
//                       reverse: false,
//                       itemBuilder: (context, index) {
//                         return Container();
//                       },
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CardScrollWidget extends StatelessWidget {
//   var currentPage;
//   var padding = 0.0;
//   var verticalInset = 00.0;

//   CardScrollWidget(this.currentPage);

//   @override
//   Widget build(BuildContext context) {
//     return new AspectRatio(
//       aspectRatio: widgetAspectRatio,
//       child: LayoutBuilder(builder: (context, contraints) {
//         // var width = contraints.maxWidth;
//         // var height = contraints.maxHeight;
//         var width = 800;
//         var height = 800;

//         var safeWidth = width - 2 * padding;
//         var safeHeight = height - 2 * padding;

// // var safeWidth  = 50;
// // var safeHeight = 50;
//         var heightOfPrimaryCard = safeHeight;
//         var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

//         var primaryCardLeft = safeWidth - widthOfPrimaryCard;
//         var horizontalInset = primaryCardLeft / 2;

//         List<Widget> cardList = new List();

//         for (var i = 0; i < images.length; i++) {
//           var delta = i - currentPage;
//           bool isOnRight = delta > 0;

//           var start = padding +
//               max(
//                   primaryCardLeft -
//                       horizontalInset * -delta * (isOnRight ? 15 : 1),
//                   0.0);

//           var cardItem = Positioned.directional(
//             top: padding + verticalInset * max(-delta, 0.0),
//             bottom: padding + verticalInset * max(-delta, 0.0),
//             start: start,
//             textDirection: TextDirection.ltr,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(16.0),
//               child: Container(
//                 decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                   BoxShadow(
//                       color: Colors.black12,
//                       offset: Offset(0.0, 0.0),
//                       blurRadius: 10.0)
//                 ]),
//                 child: AspectRatio(
//                   aspectRatio: cardAspectRatio,
//                   child: Stack(
//                     fit: StackFit.expand,
//                     children: <Widget>[
//                       title[i],
//                       // Container(
//                       //   color: Colors.black,
//                       // ),

//                       // Image.asset(images[i], fit: BoxFit.cover),
//                       // Align(
//                       //   alignment: Alignment.bottomLeft,
//                       //   child: Column(
//                       //     mainAxisSize: MainAxisSize.min,
//                       //     crossAxisAlignment: CrossAxisAlignment.start,
//                       //     children: <Widget>[
//                       //       SizedBox(
//                       //         // height: 10.0,
//                       //       ),
//                       //     ],
//                       //   ),
//                       // )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//           cardList.add(cardItem);
//         }
//         return Stack(
//           textDirection: TextDirection.rtl,
//           children: cardList,
//         );
//       }),
//     );
//   }
// }

