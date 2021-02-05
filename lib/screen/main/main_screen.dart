import 'package:flutter/material.dart';
import 'package:gokullu/screen/main/widget/address.dart';
//import 'package:flutter_coffee/screen/main/widget/my_line.dart';
import 'package:gokullu/screen/main/widget/store_name.dart';
import 'package:gokullu/screen/main/widget/view_menu.dart';

class MainScreen extends StatelessWidget {
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
            bottom: 20,
            top: 20,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 60),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(9),
                  topRight: Radius.circular(9),
                  bottomLeft: Radius.circular(9),
                  bottomRight: Radius.circular(9),
                ),
              ),
              child: Column(
                children: <Widget>[
                  //MyLine(),
                  StoreName(),
                  ViewMenu(),
                  Address()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
