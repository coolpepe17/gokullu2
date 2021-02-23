import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/about/widget/about_image.dart';
import 'package:gokullu/screen/trek_menu/trek_menu.dart';
// import 'package:gokullu/services/auth.dart';
import 'package:gokullu/widget/round_button.dart';
import 'widget/about.dart';

class AboutApp extends StatelessWidget {
  // final AuthService _auth = AuthService();
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
            SizedBox(height: 50),
            AboutText(),
            SizedBox(height: 50),
            //Button(),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Button(
                    title: 'View All Treks',
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
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 5,
      // centerTitle: true,
      title: Text(
        'About Go Kullu App',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      actions: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.person),
          label: Text('Logout'),
          onPressed: () async {
            // await _auth.signOut();
          },
        )
      ],
    );
  }
}
