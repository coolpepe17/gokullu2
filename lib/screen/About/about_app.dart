import 'dart:ui';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/about/widget/about_image.dart';
import 'package:gokullu/screen/about/widget/kulluroute.dart';
// import 'package:gokullu/screen/reach_kullu.dart';
import 'package:gokullu/screen/trek_menu/trek_menu.dart';
import 'package:gokullu/widget/round_button.dart';
import 'widget/about.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // About(),
            // MyLine(),
            // SizedBox(height: 50),
            AbtImage(),
            // SizedBox(height: 5),
            AboutText(),
            // SizedBox(height: 0),
            //Button(),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Button(
                    title: 'How to reach Kullu',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return KulluRoute();
                          },
                        ),
                      );
                    },
                  )),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Button(
                    title: 'View Treks',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TrekMenu();
                          },
                        ),
                      );
                    },
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //     color: mPrimaryColor,
      //     backgroundColor: Colors.white,
      //     buttonBackgroundColor: mPrimaryColor,
      //     height: 60,
      //     items: <Widget>[
      //       Icon(Icons.home_rounded, size: 30, color: Colors.white),
      //       Icon(Icons.list_alt, size: 30, color: Colors.white),
      //       Icon(Icons.verified_user, size: 30, color: Colors.white),
      //     ],
      //     animationDuration: Duration(milliseconds: 300),
      //     animationCurve: Curves.ease,
      //     onTap: (index) {
      //       debugPrint('Current Index');
      //     }),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image.asset(
          //   'assets/images/hp_logo.png',
          //   fit: BoxFit.contain,
          //   height: 32,
          // ),
          Container(
              padding: const EdgeInsets.all(8.0),
              child: Text('About: Go Kullu',
                  style: TextStyle(
                    color: mPrimaryTextColor,
                  ))),
          Image.asset(
            'assets/images/logo2_s.png',
            fit: BoxFit.contain,
            height: 32,
          ),
        ],

        // backgroundColor: mBackgroundColor,
        // elevation: 5,
        // centerTitle: true,
        // title: Text(
        // 'About: Go Kullu',
        // style: TextStyle(
        //   color: mPrimaryTextColor,
        //   ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:gokullu/screen/about/widget/about.dart';
// import 'package:gokullu/screen/about/widget/my_line.dart';
// import 'package:gokullu/screen/about/widget/view_menu.dart';

// import 'widget/about_image.dart';

// class AboutApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           // Container(
//           //   decoration: BoxDecoration(
//           //     image: DecorationImage(
//           //         image: AssetImage('assets/images/trek.jpg'),
//           //         fit: BoxFit.fitHeight),
//           //   ),
//           // ),
//           Positioned(
//             left: 10,
//             right: 10,
//             bottom: 10,
//             top: 60,
//             child: Container(
//               padding: const EdgeInsets.fromLTRB(16, 6, 16, 60),
//               decoration: BoxDecoration(
//                 color: Colors.white70,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15),
//                   topRight: Radius.circular(15),
//                   bottomLeft: Radius.circular(15),
//                   bottomRight: Radius.circular(15),
//                 ),
//               ),
//               child: Column(
//                 children: <Widget>[
//                   About(),
//                   MyLine(),
//                   SizedBox(height: 50),
//                   AbtImage(),
//                   SizedBox(height: 50),
//                   AboutText(),
//                   SizedBox(height: 80),
//                   ViewTrekButton(),
//                   //Address()
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// //   AppBar buildAppBar(BuildContext context) {
// //     return AppBar(
// //       backgroundColor: mBackgroundColor,
// //       elevation: 5,
// //       centerTitle: true,
// //       title: Text(
// //         'Register your Mobile',
// //         style: TextStyle(
// //           color: mPrimaryTextColor,
// //         ),
// //       ),
// //     );
// //   }
// // }
