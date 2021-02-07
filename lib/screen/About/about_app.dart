import 'package:flutter/material.dart';
import 'package:gokullu/screen/about/widget/about.dart';
import 'package:gokullu/screen/about/widget/my_line.dart';
import 'package:gokullu/screen/about/widget/view_menu.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/trek.jpg'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            top: 60,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 60),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: <Widget>[
                  About(),
                  MyLine(),
                  AboutText(),
                  ViewMenu(),
                  //Address()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
