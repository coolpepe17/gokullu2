import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/login/widget/login_button.dart';
import 'package:gokullu/screen/login/widget/login_form.dart';
import 'package:gokullu/screen/login/widget/welcome_back.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MobileReg(),
            LoginForm(),
            SizedBox(
              height: 30,
            ),
            LoginButton(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 5,
      centerTitle: true,
      title: Text(
        'Register your Mobile',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      // leading: IconButton(
      //   icon: Icon(
      //     Icons.arrow_back_ios,
      //     color: mPrimaryTextColor,
      //   ),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }
}
